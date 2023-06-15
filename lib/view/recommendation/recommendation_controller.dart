import 'package:get/get.dart';

class RecommendationController extends GetxController {
  //TODO: Implement RecommendationController
  RxInt? valueChip = 0.obs;

  RxInt? selectedValue = 0.obs;
  List<String> hobbyList = [
    " 😍 Romance",
    "Sci-fi",
    " ✎ Art",
    " Art",
    "Sports",
    " ✏ Art",
    "Movies",
    "Geography",
    "Trending News",
    "Art",
  ];

  List<String>? selectedHobby = [];

  RxBool isSelected = false.obs;
  List choicechip = [
    {"name": " 😍 Romance"},
    {"name": "Sci-fi"},
    {"name": "Art"},
    {"name": "Art"},
    {"name": "Sports"},
    {"name": "Art"},
    {"name": "Movies"},
    {"name": "Geography"},
    {"name": "Trending News"},
    {"name": "Art"},
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


}
