import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  File pickedImage;
  FirebaseVisionImage visionImage;
  VisionText visionText;

  bool isImageLoaded = false;

  Future pickImage() async {
    var tempStore = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      pickedImage = tempStore;
      isImageLoaded = true;
    });
  }

  Future readText() async {
    String text = visionText.text;
      
  }

  Future decode() async {

    TextRecognizer textRecognizer = FirebaseVision.instance.textRecognizer();

     visionText = await textRecognizer.processImage(visionImage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        SizedBox(height: 100.0),
        isImageLoaded
            ? Center(
                child: Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: FileImage(pickedImage), fit: BoxFit.cover))),
              )
            : Container(),
        SizedBox(height: 10.0),
        RaisedButton(
          child: Text('Pick an image'),
          onPressed: pickImage,
        ),
        SizedBox(height: 10.0),
        RaisedButton(
          child: Text('Read Text'),
          onPressed: readText,
        ),
        RaisedButton(
          child: Text('Read Bar Code'),
          onPressed: decode,
        )
      ],
    ));
  }
}
