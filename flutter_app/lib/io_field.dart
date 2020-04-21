import 'package:flutter/material.dart';

class IOField extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        /*appBar: AppBar(
          title: const Text('Energy'),
        )*/
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey[500],
                width: 2
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: TextField(
            decoration: new InputDecoration(labelText: "Input", fillColor: Colors.grey,
                border: InputBorder.none,
                ),
            keyboardType: TextInputType.number,
          ),

        );
  }
}
