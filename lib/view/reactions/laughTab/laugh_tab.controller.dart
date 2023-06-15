import 'package:get/get.dart';

import '../../../app/constant/image.dart';



class LaughTabController extends GetxController {
  //TODO: Implement LaughTabController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }
  List allViewList = [

    {
      "name": "Ernest white",
      "subName": "Premium gist lord and brother of zion",
      "image":  ImagePickerImage.smileImage,

    },
    {
      "name": "ChukwuEbuka",
      "subName": "Premium gist lord and brother of zion",
      "image":  ImagePickerImage.smileImage,
    },

    {
      "name": "Fidelis Usman ",
      "subName": "Premium gist lord and brother of zion",
      "image": ImagePickerImage.smileImage,
    }
  ];
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
