import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadPage extends StatefulWidget {
  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  File? _image;
  String output = "";

  @override
  void initState() {
    super.initState();
  }

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Upload")),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: _image == null
                ? Center(child: Text("No image selected"))
                : Image.file(_image!),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                output,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: _pickImage,
              child: const Text("Upload from device"),
            ),
          ),
        ],
      ),
    );
  }
}
