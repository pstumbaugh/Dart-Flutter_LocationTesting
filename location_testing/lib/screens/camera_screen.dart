import 'package:cloud_firestore/cloud_firestore.dart';
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
    return StreamBuilder(
      stream: Firestore.instance.collection('posts').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData &&
            snapshot.data.documents != null &&
            snapshot.data.documents.length > 0) {
          return ListView.builder(
            itemExtent: 80.0,
            itemCount: snapshot.data.documents.length,
            itemBuilder: (context, index) {
              var post = snapshot.data.documents[index];

              return ListTile(
                leading: Text(post['weight'].toString()),
                title: Text('Post Title'),
              );
            },
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

  /*
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

    */