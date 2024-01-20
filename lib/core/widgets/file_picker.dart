import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

class FilePickerExample extends StatefulWidget {
  const FilePickerExample({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FilePickerExampleState createState() => _FilePickerExampleState();
}

class _FilePickerExampleState extends State<FilePickerExample> {
  Uint8List? _fileBytes;
  String? _base64String;

  Future<void> _pickFile() async {
    XFile? pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      File file = File(pickedFile.path);
      List<int> fileBytes = await file.readAsBytes();
      String base64String = base64Encode(fileBytes);

      setState(() {
        _fileBytes = Uint8List.fromList(fileBytes);
        _base64String = base64String;
      });

      // Print the base64 string or perform other actions with the file
      print('Base64 String: $_base64String');
    } else {
      // User canceled the file picking operation
      print('File picking canceled.');
    }

    // Navigate back to the login screen
    // ignore: use_build_context_synchronously
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('File Picker Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_fileBytes != null)
              Image.memory(
                _fileBytes!,
                height: 100,
              ),
            ElevatedButton(
              onPressed: _pickFile,
              child: const Text('Pick a File'),
            ),
          ],
        ),
      ),
    );
  }
}
