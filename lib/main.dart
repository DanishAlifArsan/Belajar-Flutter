import 'dart:math';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

final log = Logger('My App');

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[ 100],
        elevation: 0,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
              child: Image.network("https://images.unsplash.com/photo-1762912302731-508b4580735f?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
          ),
          Expanded(
              flex: 1,
              child: Text("Level $level")
          ),
          Expanded(
            flex: 2,
            child: FilledButton(
                onPressed: () {}, child: Text("Button")
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(50),
              color: Colors.grey[100],
              child: Text("Container"),
            ),
          ),
        ],
      ),



      // Center(
      //   child: ElevatedButton.icon(
      //       onPressed: () {
      //         log.info("Button pressed");
      //       },
      //       icon: Icon(Icons.mail),
      //       label: Text("Mail Me"),
      //       style: ButtonStyle(
      //         backgroundColor: WidgetStatePropertyAll(Colors.lightBlue),
      //       ),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple[100],
        onPressed: () {
          setState(() {
            level++;
          });
        },
        child: Text("Button"),
      ),
    );
  }
}

