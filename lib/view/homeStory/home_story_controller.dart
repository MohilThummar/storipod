import 'package:get/get.dart';
import 'package:storipod_app/app/constant/image.dart';
import '../../app/constant/string.dart';

class HomeStoryController extends GetxController {
  //TODO: Implement HomeStoryController

  final count = 0.obs;
  List storyList=[{"name":AppStrings.everyRound,
  "image":ImagePickerImage.p6Image,
"subName":AppStrings.countryBrown,
  "time":AppStrings.minsAgo
},{"name":AppStrings.citizens,
    "image":ImagePickerImage.p7Image,
    "subName":AppStrings.adegeji,
    "time":AppStrings.minsAgo
  },{"name":AppStrings.thePress,

    "image":ImagePickerImage.p1Image,
    "subName":AppStrings.ramonda,
    "time":AppStrings.minsAgo
  },{"name":AppStrings.isNever,

    "image":ImagePickerImage.p2Image,
    "subName":AppStrings.cheistable,
    "time":AppStrings.minsAgo
  },{"name":AppStrings.eyeryzGreen,

    "image":ImagePickerImage.p3Image,
    "subName":AppStrings.brown,
    "time":AppStrings.minsAgo
  },{"name":AppStrings.ladies,

    "image":ImagePickerImage.p4Image,
    "subName":AppStrings.everyRound,
    "time":AppStrings.minsAgo
  },{"name":AppStrings.everyRound,

    "image":ImagePickerImage.p5Image,
    "subName":AppStrings.wu,
    "time":AppStrings.minsAgo
  },{"name":AppStrings.eyeryzGreen,

    "image":ImagePickerImage.p6Image,
    "subName":AppStrings.everyRound,
    "time":AppStrings.minsAgo
  },{"name":AppStrings.isNever,

    "image":ImagePickerImage.p7Image,
    "subName":AppStrings.everyRound,
    "time":AppStrings.minsAgo
  },

];
  @override
  void onInit() {
    super.onInit();
  }

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
