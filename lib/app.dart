import 'package:app/core/widgets/bottom_navigator/bottom_navigator.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Title'),
            backgroundColor: Colors.deepPurple,
            elevation: 0,
          ),
          body: MyBottomNavigator()),
    );
  }
}
