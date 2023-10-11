// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// ignore: use_key_in_widget_constructors
class ImagePickers extends StatefulWidget {
  @override
  State<ImagePickers> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePickers> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  chooseImage() async {
    //!========= Pick an image ==========
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  captureImage() async {
    //!========  Capture a photo ==========
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    if (photo != null) {
      setState(() {
        _image = File(photo.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Images from Gallery"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _image != null
                ? Image.file(
                    _image!,
                    scale: 4,
                  )
                : Icon(
                    Icons.image,
                    size: 150,
                  ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  chooseImage();
                },
                onLongPress: () {
                  captureImage();
                },
                child: Text("Choose Image"))
          ],
        ),
      ),
    );
  }
}