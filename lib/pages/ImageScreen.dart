import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Image.asset(
        "assets/images/img2.png",
      ),
    );
  }
}
