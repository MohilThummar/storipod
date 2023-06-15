import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:storipod_app/main.dart';

import '../explore/SeeAllProfile/views/see_all_profile_view.dart';
import '../explore/detailProfile/views/detail_profile_view.dart';
import '../explore/views/explore_view.dart';
import '../homeStory/views/home_story_view.dart';
import '../login/views/login_view.dart';

class NavbarScreenController extends GetxController {
  //TODO: Implement NavbarScreenController
  List screen = <Widget>[
    HomeStoryView(),
    !showProfile.value? ExploreView():SeeAllProfileView(),
    !isLogin.value ? LoginView():DetailProfileView()
  ];

  void changeSelectedItem(int index) {
    correntIndex.value=index;
    // selectedItemIndex.value = index;
  }

  final count = 0.obs;
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
