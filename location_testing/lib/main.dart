import 'package:flutter/material.dart';
import 'screens/share_location_screen.dart';
import 'screens/camera_screen.dart';
import 'screens/remote_data_Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Location Testing"),
          ),
          body: RemoteDataScreen()),
    );
  }
}
