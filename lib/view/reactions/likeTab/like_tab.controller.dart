import 'package:get/get.dart';
import 'package:storipod_app/app/constant/image.dart';


class LikeTabController extends GetxController {
  //TODO: Implement LikeTabController

  final count = 0.obs;

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


  void increment() => count.value++;
}
