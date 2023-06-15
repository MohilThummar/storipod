import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:story_view/controller/story_controller.dart';

class StoryEditController extends GetxController {
  //TODO: Implement StoryEditController
  RxInt? value = 0.obs;
  RxBool isSelected = true.obs;

  final count = 0.obs;
  TextEditingController searchController=TextEditingController();
  List StoryViewer = [
    {
      "image": ImagePickerImage.girl1Image,
      "name": "Agberedo Jackson",
      "LName": "The curious incident of the dog in the"
    },
    {
      "image": ImagePickerImage.girl2Image,
      "name": "Jamie Oliver",
      "LName":
          "We are happy you are back courtney, we wait for premium gist. go girllll!!!!"
    },
    {
      "image": ImagePickerImage.boy1Image,
      "name": "Agberedo Jackson",
      "LName": "The curious incident of the dog in the"
    },
    {
      "image": ImagePickerImage.boy1Image,
      "name": "Agberedo Jackson",
      "LName": "The curious incident of the dog in the"
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
  List<String>? selectedKeyword = [];
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
  final StoryController storyController = StoryController();

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

  @override
  void dispose() {
    // TODO: implement dispose
    storyController.dispose();
    super.dispose();
  }

  void increment() => count.value++;
}
