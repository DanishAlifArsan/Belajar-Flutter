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

    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;

    // set background
    String bgImage = data['IsDayTime'] ? 'day.png' : 'night.png';
    Color? bgColor = data['IsDayTime'] ? Colors.blue : Colors.indigo[700];

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/$bgImage'),
                  fit: BoxFit.cover,
              )
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,120,0,0),
              child: Column(
                children: [
                   TextButton.icon(
                       label: Text("Edit Location"),
                       icon: Icon(Icons.edit_location),
                       onPressed: () async {
                         dynamic result = await Navigator.pushNamed(context, "/location");
                         setState(() {
                           data = {
                             'Location' : result['Location'],
                             'Flag' : result['Flag'],
                             'Time' : result['Time'],
                             'IsDayTime' : result['IsDayTime'],
                           };
                         });
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
            ),
          )
      ),
    );
  }
}
