import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:storipod_app/main.dart';
import 'package:storipod_app/view/explore/SeeAllProfile/see_all_profile_binding.dart';
import 'package:storipod_app/view/explore/detail_profile_binding.dart';
import 'package:storipod_app/view/explore/explore_binding.dart';
import 'package:storipod_app/view/homeStory/home_story_binding.dart';
import 'package:storipod_app/view/login/login_binding.dart';
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


@override
  void onInit() {
    // TODO: implement onInit
  ExploreBinding().dependencies();
  DetailProfileBinding().dependencies();
  SeeAllProfileBinding().dependencies();
  HomeStoryBinding().dependencies();
  LoginBinding
    ().dependencies();

  super.onInit();
  }
}
