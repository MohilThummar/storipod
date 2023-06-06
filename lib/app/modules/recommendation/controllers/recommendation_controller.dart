import 'package:get/get.dart';

class RecommendationController extends GetxController {
  //TODO: Implement RecommendationController
  RxInt? value = 0.obs;
  final count = 0.obs;
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

  void increment() => count.value++;
}
