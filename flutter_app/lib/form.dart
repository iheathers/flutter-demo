import 'package:flutter/material.dart';
import 'package:flutterapp/dropdown.dart';
import 'package:flutterapp/io_field.dart';
class CustomForm extends StatefulWidget {
  CustomForm({Key key}) : super(key: key);

  @override
  _CustomFormState createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: <Widget>[
           IOField(), Row(

             children: <Widget>[
               Expanded(child: DropDown()),
             ],
           ),

          ],
        ),
      ),
    );
  }
}