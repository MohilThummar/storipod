import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/findnewstory_controller.dart';

class FindnewstoryView extends GetView<FindnewstoryController> {
  const FindnewstoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FindnewstoryView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FindnewstoryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
