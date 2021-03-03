import 'package:flutter/material.dart';

class ShareLocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Latitude: LATITUDE'),
          Text('Longitude: LONGITUDE'),
          RaisedButton(
            child: Text('Share'),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
