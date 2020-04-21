// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// You can read about packages here: https://flutter.io/using-packages/
import 'package:flutter/material.dart';
import 'package:flutterapp/category_route.dart';
import 'package:flutterapp/form.dart';
// TODO: Import the CategoryRoute widget
import 'package:flutterapp/io_field.dart';
import 'package:flutterapp/dropdown.dart';
/// The function that is called when main.dart is run.
void main() {
  runApp(UnitConverterApp());
}

/// This widget is the root of our application.
///
/// The first screen we see is a list [Categories].
class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Unit Converter',
        // TODO: Instead of pointing to exactly 1 Category widget,
        // our home should now point to an instance of the CategoryRoute widget.
        home: Scaffold(
          appBar: AppBar(title: Text("Unit Converter"),),
          body: Container(
            child: CustomForm(),

          ),
        ),
      ),
    );
  }
}