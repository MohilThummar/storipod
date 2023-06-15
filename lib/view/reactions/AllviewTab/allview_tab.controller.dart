import 'package:get/get.dart';
import 'package:storipod_app/app/constant/image.dart';

class AllviewTabController extends GetxController {
  //TODO: Implement AllviewTabController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  List allViewList = [
    {
      "name": "Robert Antigha",
      "subName": "Robert Antigha",
      "image": ImagePickerImage.likeImage,
    },
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
      "name": "Regina Nzoko",
      "subName": "Premium gist lord and brother of zion",
      "image":  ImagePickerImage.likeImage,
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
