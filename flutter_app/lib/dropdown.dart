
import 'package:flutter/material.dart';
class DropDown extends StatefulWidget {
  DropDown({Key key}) : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.grey[500],
              width: 2
          ),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(8.0) ,

      //appBar: AppBar(title: Text("DropDown"),),
      child: DropdownButton<String>(

        value: dropdownValue,
        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.grey),
        underline: Container(
          height: 0,

        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['One', 'Two', 'Free', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}