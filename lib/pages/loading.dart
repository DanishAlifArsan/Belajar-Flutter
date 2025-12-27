import 'package:flutter/material.dart';
import 'package:belajar_flutter/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'London', flag: 'England.png', url: 'Europe/London');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'Location' : instance.location,
      'Flag' : instance.flag,
      'Time' : instance.time,
      'IsDayTime' : instance.isDayTime,
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitRing(
          color: Colors.white,
          size: 50,
        ),
      )
    );
  }
}
