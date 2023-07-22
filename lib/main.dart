import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('İsim Yazdırma Uygulaması'),
        ),
        body: Center(
          child: NameDisplayWidget(),
        ),
      ),
    );
  }
}

class NameDisplayWidget extends StatefulWidget {
  @override
  _NameDisplayWidgetState createState() => _NameDisplayWidgetState();
}

class _NameDisplayWidgetState extends State<NameDisplayWidget> {
  String userName = '';

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('İsim Girin'),
          content: TextField(
            onChanged: (value) {
              setState(() {
                userName = value;
              });
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Kapat'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'isminiz:',
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(height: 10),
        Text(
          userName,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: _showDialog,
          child: Text('İsim Gir'),
        ),
      ],
    );
  }
}
