// create a screen
import 'package:flutter/material.dart';
import 'desktop_view.dart';
import 'mobile_view.dart';
import 'data.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  Screen({super.key});


  // pur users as allusers from data.dart
  // final List<user> users = allUsers;

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          
          return DesktopView(title: 'desktop');
        } else {
          return MobileView(title: 'mobile');
        }
      },
    );
  }
}