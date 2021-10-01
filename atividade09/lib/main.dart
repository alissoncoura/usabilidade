import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => PrimeiraTela(),
          '/segunda': (context) => SegundaTela(),
          '/terceira': (context) => TerceiraTela(),
          '/quarta': (context) => QuartaTela(),
        },
      ),
    );

class PrimeiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Tela('Primeira Tela', '1', 'segunda');
  }
}

class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Tela('Segunda Tela', '2', 'terceira');
  }
}

class TerceiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Tela('Terceira Tela', '3', 'quarta');
  }
}

class QuartaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Tela('Quarta Tela', '4', 'segunda');
  }
}

class Tela extends StatelessWidget {
  final String titulo, numero, proxima;

  Tela(this.titulo, this.numero, this.proxima);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.titulo),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                '${this.numero}',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              padding: EdgeInsets.all(40),
              margin: EdgeInsets.all(25),
            ),
            Navegacao(this.numero, this.proxima),
          ],
        ),
      ),
    );
  }
}

class Navegacao extends StatelessWidget {
  final String numero;
  final String proxima;
  Navegacao(this.numero, this.proxima);

  Widget nav(BuildContext context) {
    if (this.numero == '1')
      return ElevatedButton(
        child: Icon(Icons.navigate_next),
        onPressed: () {
          Navigator.pushNamed(context, '/${this.proxima}');
        },
      );
    else
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            child: Icon(Icons.navigate_before),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          ElevatedButton(
            child: Icon(Icons.navigate_next),
            onPressed: () {
              Navigator.pushNamed(context, '/${this.proxima}');
            },
          ),
        ],
      );
  }

  @override
  Widget build(BuildContext context) {
    return this.nav(context);
  }
}
