import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(url: 'Asia/Kathmandu' , location: 'Nepal', flag:'nepal.jpg' ),
    WorldTime(url: 'America/New_York', location: 'USA', flag:'usa.png' ),
    WorldTime(url: 'Europe/Berlin', location: 'Germany', flag:'germany.png' ),
    WorldTime(url: 'Asia/Tokyo', location: 'Japan', flag: 'japan.png'),
    WorldTime(url: 'Europe/Moscow', location: 'Russia', flag:'russia.png' ),
  ];

  void updateTime(index) async {

    WorldTime instance = locations[index];
    await instance.getTime();

    Navigator.pop(context,   {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Choose a location"),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: (){
                updateTime(index);
              },
              title: Text(locations[index].location),
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/${locations[index].flag}'
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
