import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:storipod_app/app/modules/onboarding/views/onboarding_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Get.to(OnboardingView());
          },
          child: Text(
            'HomeView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
