import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CustomImagePicker {
  static Future<File?> show(BuildContext context) async {
    File? image;
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            'Choose Image Source',
            textAlign: TextAlign.center,
          ),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text(
                  'Gallery',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () async {
                  final pickedFile =
                      await ImagePicker().pickImage(source: ImageSource.gallery);


                  image = pickedFile == null ? null : File(pickedFile.path);
                  if(
                  pickedFile!=null
                  ){

             Get.back();
                  }
                },
              ),
              ElevatedButton(
                child: const Text(
                  'Camera',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () async {
                  final pickedFile =
                      await ImagePicker().getImage(source: ImageSource.camera);

                  image = pickedFile == null ? null : File(pickedFile.path);
             Get.back();
                },
              )
            ],
          ),
        );
      },
    );
    return image;
  }
}
