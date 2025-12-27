import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)?.settings.arguments as Map;

    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,120,0,0),
            child: Column(
              children: [
                 TextButton.icon(
                     label: Text("Edit Location"),
                     icon: Icon(Icons.edit_location),
                     onPressed: () {
                       Navigator.pushNamed(context, "/location");
                     },
                 ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data['Location'],
                      style: TextStyle(
                        fontSize: 28,
                        letterSpacing: 2,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  data['Time'],
                  style: TextStyle(
                    fontSize: 66
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
