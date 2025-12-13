import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String? location;
  String? time;
  String? flag; // url to flag icon
  String? url; // location url for api endpoint

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try{
      // make request
      Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);

      // get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].subString(1,3);

      // create datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours:int.parse(offset)));

      // set time property
      time = now.toString();
    }
    catch(e) {
      print("Error : $e");
      time = 'could not get time data';
    }
  }
}