import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File image;

  final picker = ImagePicker();
  void getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    image = File(pickedFile.path);
//**BE SURE TO ADD IN ERROR IF NOTHING AVAILABLE */
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (image == null) {
      return Center(
        child: RaisedButton(
          child: Text('Select Photo'),
          onPressed: () {
            getImage();
          },
        ),
      );
    } else {
      return Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.file(image),
          SizedBox(height: 40),
          RaisedButton(
            child: Text('Post It!'),
            onPressed: () {
              //do stuff with photo
            },
          )
        ],
      ));
    }
  }
}

  /*


    */