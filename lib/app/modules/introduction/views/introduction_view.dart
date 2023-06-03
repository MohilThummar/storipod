import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/modules/login/views/login_view.dart';
import '../../../constant/colour.dart';
import '../../../onbordingwidget/cup_onbording_page.dart';
import '../../../onbordingwidget/cupertino_bording.dart';
import '../../../onbordingwidget/newfeature.dart';
import '../../../onbordingwidget/whatsnew.dart';
import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoOnboarding(  onPressed:(){

      Get.to(LoginView());
    },
      bottomButtonChild: Text("Get started"),
      bottomButtonColor: ColorPicker.appButtonColor,
      pages: [
        const CupertinoOnboardingPage(
          title: Text('It’s Storie time!'),
          body: Text(""),
        ),
        WhatsNewPage(
          title: const Text("What's New in Calendar"),
          features: const [
            // Feature's type must be `WhatsNewFeature`
            WhatsNewFeature(
              title: Text(""),
              description: Text(""),
              icon: Icon(null),
            ),
            WhatsNewFeature(
              title: Text(""),
              description: Text(""),
              icon: Icon(null),
            ),
          ],
        ),
        WhatsNewPage(
          title: const Text("What's New in Calendar"),
          features: [
            // Feature's type must be `WhatsNewFeature`
            WhatsNewFeature(
              title: Text(""),
              description: const Text(""),
              icon: Icon(null),
            ),
            WhatsNewFeature(
              title: Text(""),
              description: const Text(""),
              icon: Icon(null),
            ),
          ],
        ),
      ],
    );
  }
}
