import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime{

  String location;
  String time;
  String flag; // url to flag icon in asset
  String url;
  bool isDayTime;

  WorldTime({ this.location, this.flag, this.url,});

  Future<void> getTime() async {

    try {
      Response response =
      await get('http://worldtimeapi.org/api/timezone/$url');

      Map data = jsonDecode(response.body);
      String datetime = data['utc_datetime'];
      String hourOffset = data['utc_offset'].substring(1, 3);
      String minuteOffset = data['utc_offset'].substring(4);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(
        hours: int.parse(hourOffset),
        minutes: int.parse(minuteOffset),
      ));

      print(now);
      print(now.hour);
      
      isDayTime = now.hour > 6 && now.hour < 20 ?  true : false;
      // set the time property
      time = DateFormat.jm().format(now);
    }
    catch (e){
      print("Error: $e");
      time = "Error";

    }

  }

}