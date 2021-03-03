import 'package:flutter/material.dart';
import 'screens/share_location_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: Scaffold(body: ShareLocationScreen()),
    );
  }
}
