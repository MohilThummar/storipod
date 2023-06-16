import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CreateAccountController extends GetxController {
  //TODO: Implement CreateAccountController
  File? pickedImage;

  void pickImageFromCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image != null) {
      pickedImage = File(image.path);
      update();
    }
  }

  void pickImageFromGallery() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      pickedImage = File(image.path);
      update();
    }
  }





}
