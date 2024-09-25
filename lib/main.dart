import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[200],
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    '0',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.grey[300],
              child: GridView.count(
                crossAxisCount: 4,
                padding: EdgeInsets.all(8.0),
                children: <Widget>[
                  _buildButton('DEL', Colors.blue[400]!, Colors.white),
                  _buildButton('=', Colors.blue[400]!, Colors.white),
                  _buildButton('1', Colors.orange, Colors.white),
                  _buildButton('2', Colors.orange, Colors.white),
                  _buildButton('3', Colors.orange, Colors.white),
                  _buildButton('/', Colors.green, Colors.white),
                  _buildButton('4', Colors.orange, Colors.white),
                  _buildButton('5', Colors.orange, Colors.white),
                  _buildButton('6', Colors.orange, Colors.white),
                  _buildButton('-', Colors.green, Colors.white),
                  _buildButton('7', Colors.orange, Colors.white),
                  _buildButton('8', Colors.orange, Colors.white),
                  _buildButton('9', Colors.orange, Colors.white),
                  _buildButton('X', Colors.green, Colors.white),
                  _buildButton('0', Colors.orange, Colors.white),
                  _buildButton('%', Colors.orange, Colors.white),
                  _buildButton('+', Colors.green, Colors.white),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String label, Color backgroundColor, Color textColor) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: TextButton(
          onPressed: () {},
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 24,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
