import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Página Ininial'),
      ),
      body: Center(
        child: Container(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Image(
              image: NetworkImage(
                  'https://media.giphy.com/media/pt0EKLDJmVvlS/giphy.gif'),
            ),
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellowAccent,
          ),
          padding: EdgeInsets.all(100),
          margin: const EdgeInsets.all(25),
        ),
      ),
      backgroundColor: Colors.blue[900],
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Exemplo de botão',
        child: Icon(Icons.add),
      ),
    );
  }
}
