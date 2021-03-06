import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; //location name for the UI
  String time; //time in that location
  String flag; //url to an asset flag icon
  String url; //location url for api endpoint
  bool isDaytime = false; //true or false id daytime or not

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      //make the request
      Response rp = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(rp.body);
      //print(data);

      //get properties from data
      String dateTime = data['datetime'];
      String offSet = data['utc_offset'].substring(1, 3);
      //print(dateTime);
      //print(offSet);

      //create a dateTime object
      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offSet)));

      //set the time property
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('caught error: $e');
      time = 'coude not get time data';
    }
  }
}
