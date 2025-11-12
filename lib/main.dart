import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[100],
      ),
      body: Center(
        child: Text(
          "Hello World",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.black,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple[100],
        onPressed: () => {

        },
        child: Text("Button"),
      ),
    ),
  ));
}