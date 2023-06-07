import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';

class StoryEditController extends GetxController {
  //TODO: Implement StoryEditController
  RxInt? value = 0.obs;
  final count = 0.obs;
  List StoryViewer = [
    {
      "image": ImagePickerImage.girl1Image,
      "name": "Agberedo Jackson",
      "name": "The curious incident of the dog in the"
    },
    {
      "image": ImagePickerImage.boy1Image,
      "name": "Agberedo Jackson",
      "name": "The curious incident of the dog in the"
    }
  ];
  List imageList = [
    ImagePickerImage.sd1Image,
    ImagePickerImage.sd2Image,
    ImagePickerImage.sd3Image,
    ImagePickerImage.sd4Image,
    ImagePickerImage.sd2Image,
    ImagePickerImage.sd2Image,
    ImagePickerImage.sd3Image,
    ImagePickerImage.sd2Image,
    ImagePickerImage.sd1Image,
    ImagePickerImage.sd4Image,
    ImagePickerImage.sd3Image,
    ImagePickerImage.sd2Image,
    ImagePickerImage.sd2Image,
    ImagePickerImage.sd1Image,
  ];
  List datStoryName = [
    "#BANGERS",
    "#BANGERS",
    "#BANGERS",
  ];
  List keyword = [
    "#BANGERS",
    "#Baskerv",
    "#hronica",
    "#BANGERS",
    "#Baskerv",
    "#hronica",
    "#BANGERS",
    "#Baskerv",
    "#hronica",
    "#BANGERS",
    "#Baskerv",
    "#hronica",
    "#BANGERS",
    "#Baskerv",
    "#hronica",
  ];
  List colorBox = [
    {
      "color": ColorPicker.lightPinkColor,
      "name": "Lorem ipsum dolor sit am",
      "textColor": ColorPicker.whiteColor,
    },
    {
      "color": ColorPicker.skyColor,
      "name": "",
      "textColor": ColorPicker.whiteColor,
    },
    {
      "color": ColorPicker.yellowColor,
      "name": "Lorem ipsum dolor sit am",
      "textColor": ColorPicker.whiteColor,
    },
    {
      "color": ColorPicker.blackColor,
      "name": "",
      "textColor": ColorPicker.whiteColor,
    },
    {
      "color": ColorPicker.offGreen,
      "name": "Lorem ipsum dolor sit am",
      "textColor": ColorPicker.whiteColor,
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