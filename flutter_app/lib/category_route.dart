import 'package:flutter/material.dart';
import 'package:flutterapp/category.dart';
// TODO: Check if we need to import anything

// TODO: Define any constants
final String _appTitle = "Unit Converter";
final _backgroundColor = Colors.green[100];
/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.

    // TODO: Create a list view of the Categories
    final listView = Container(
      child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: _categoryNames.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: _backgroundColor,padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Category(
              name: _categoryNames[index],
              color: _baseColors[index],
              iconLocation: Icons.cake,
            ));
          }),
    );

    // TODO: Create an App Bar
    final appBar = AppBar(
      title: Text(_appTitle, style: TextStyle(color: Colors.black, fontSize: 30.0),),
      backgroundColor: _backgroundColor,
      centerTitle: true,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
