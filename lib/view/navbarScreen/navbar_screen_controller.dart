import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:storipod_app/main.dart';
import '../explore/SeeAllProfile/see_all_profile_view.dart';
import '../explore/detailProfile/detail_profile_view.dart';import '../explore/explore_view.dart';
import '../homeStory/home_story_view.dart';
import '../login/login_view.dart';


class NavbarScreenController extends GetxController {
  //TODO: Implement NavbarScreenController
  List screen = <Widget>[
    const HomeStoryView(),
    !showProfile.value? const ExploreView():const SeeAllProfileView(),
    !isLogin.value ? const LoginView():const DetailProfileView()
  ];

  void changeSelectedItem(int index) {
    correntIndex.value=index;
    // selectedItemIndex.value = index;
  }



}
