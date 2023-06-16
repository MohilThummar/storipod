import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:storipod_app/view/findnewstory/findnewstory_view.dart';


class FindnewstoryController extends GetxController {
  //TODO: Implement FindnewstoryController
  final PageController pageController = PageController(initialPage: 0);
  int activePage = 0;
  final count = 0.obs;


  final List<Widget> pagesGrid = [pageOneDone(), pageOneDone(), pageOneDone()];

}