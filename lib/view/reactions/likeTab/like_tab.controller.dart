import 'package:get/get.dart';

import '../../../app/constant/image.dart';
import '../../../constant/image.dart';

class LikeTabController extends GetxController {
  //TODO: Implement LikeTabController

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
      "name": "Regina Nzoko",
      "subName": "Premium gist lord and brother of zion",
      "image":  ImagePickerImage.likeImage,
    },

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
