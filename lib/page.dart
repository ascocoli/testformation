import 'package:flutter/material.dart';

class Aceuil extends StatelessWidget {
  const Aceuil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("data"), backgroundColor: Colors.blue),
      body: Container(
        color: Colors.red,
        width: 100,
        height: 100,
        child: Text(
          "Mon app",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
