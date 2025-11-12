import 'dart:math';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

final log = Logger('My App');

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[100],
      ),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              log.info("Button pressed");
            },
            icon: Icon(Icons.mail),
            label: Text("Mail Me"),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.lightBlue),
            ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple[100],
        onPressed: () => {

        },
        child: Text("Button"),
      ),
    );
  }
}
