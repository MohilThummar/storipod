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
    Get.put(IntroductionController());

    // // the index of the current page
    // int _activePage = 0;
    //
    // final List<Widget> _pages = [PageOne(), PageTwo(), PageThree()];
    // return Scaffold(
    //   body: SafeArea(
    //     child: Stack(
    //       children: [
    //         Container(
    //           decoration: BoxDecoration(
    //             image: DecorationImage(
    //                 image: AssetImage("assets/intro.png"), fit: BoxFit.fill),
    //           ),
    //         ),
    //         Align(
    //             widthFactor: 9.5,
    //             alignment: Alignment.topRight,
    //             child: Text(
    //               "Skip",
    //               style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    //             )),
    //         Positioned(
    //           bottom: 200,
    //           left: 0,
    //           right: 0,
    //           height: 200,
    //           child: Container(
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: List<Widget>.generate(
    //                   _pages.length,
    //                   (index) => Padding(
    //                         padding: const EdgeInsets.symmetric(horizontal: 10),
    //                         child: InkWell(
    //                           onTap: () {
    //                             controller.pageController.animateToPage(index,
    //                                 duration: const Duration(milliseconds: 300),
    //                                 curve: Curves.easeIn);
    //                           },
    //                           child: CircleAvatar(
    //                             radius: 4,
    //                             backgroundColor: _activePage == index
    //                                 ? Colors.blueAccent
    //                                 : Colors.grey,
    //                           ),
    //                         ),
    //                       )),
    //             ),
    //           ),
    //         ),
    //         PageView.builder(
    //           controller: controller.pageController,
    //           onPageChanged: (int page) {
    //             _activePage = page;
    //           },
    //           itemCount: _pages.length,
    //           itemBuilder: (BuildContext context, int index) {
    //             return _pages[index % _pages.length];
    //           },
    //         ),
    //       ],
    //     ),
    //   ),
    // );


     return  CupertinoOnboarding(
      onPressed: () {
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

PageOne() {
  return Container(
    child: Padding(
      padding: EdgeInsets.only(top: 400),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "It's Shori Time !",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text("Tell Your Story", style: TextStyle(fontSize: 14)),
              ),
              Text("Find New Ones", style: TextStyle(fontSize: 14)),
            ],
          ),
          Container(
            width: 300,
            height: 45,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    primary: Colors.cyan),
                onPressed: () {},
                child: Text("Get started")),
          )
        ],
      )),
    ),
  );
}

PageTwo() {
  return Container(
    child: Center(child: Text("Screen 2")),
  );
}

PageThree() {
  return Container(
    child: Center(child: Text("Screen 3")),
  );
}
