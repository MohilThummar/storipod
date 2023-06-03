// Flutter imports:
import 'package:flutter/cupertino.dart';

// Package imports:
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';

// Estimated from the iPhone Simulator running iOS 15
final CupertinoDynamicColor _kBackgroundColor =
    CupertinoDynamicColor.withBrightness(
  color: CupertinoColors.white,
  darkColor: CupertinoColors.systemGrey6.darkColor,
);

final CupertinoDynamicColor _kActiveDotColor =
    CupertinoDynamicColor.withBrightness(
  color: CupertinoColors.systemGrey2.darkColor,
  darkColor: CupertinoColors.systemGrey2.color,
);
final CupertinoDynamicColor _kInactiveDotColor =
    CupertinoDynamicColor.withBrightness(
  color: CupertinoColors.systemGrey2.color,
  darkColor: CupertinoColors.systemGrey2.darkColor,
);

const Size _kDotSize = Size(8, 8);

final BorderRadius _bottomButtonBorderRadius = BorderRadius.circular(15);
const EdgeInsets _kBottomButtonPadding = EdgeInsets.only(
  left: 22,
  right: 22,
  bottom: 60,
);

/// Represents an onboarding screen in iOS 15 style.
/// Works great with `modal_bottom_sheet` package.
///
/// It is possible to restyle this widget to match older iOS versions.
class CupertinoOnboarding extends StatefulWidget {
  /// Default constructor of the [CupertinoOnboarding] widget.
  /// Works great with `modal_bottom_sheet` package.
  ///
  /// It is possible to restyle this widget to match older iOS versions.
  CupertinoOnboarding({
    required this.pages,
    this.backgroundColor,
    this.bottomButtonChild = const Text('Continue'),
    this.bottomButtonColor,
    this.bottomButtonBorderRadius,
    this.bottomButtonPadding = _kBottomButtonPadding,
    this.widgetAboveBottomButton,
    this.pageTransitionAnimationDuration = const Duration(milliseconds: 500),
    this.pageTransitionAnimationCurve = Curves.easeInOut,
    this.onPressed,
    this.onPressedOnLastPage,
    super.key,
  }) : assert(
          pages.isNotEmpty,
          'Number of pages must be greater than 0',
        );

  final List<Widget> pages;

  final Color? backgroundColor;

  final Widget bottomButtonChild;

  final Color? bottomButtonColor;

  final BorderRadius? bottomButtonBorderRadius;

  final EdgeInsets bottomButtonPadding;

  final Widget? widgetAboveBottomButton;

  final Duration pageTransitionAnimationDuration;

  final Curve pageTransitionAnimationCurve;

  final VoidCallback? onPressed;

  final VoidCallback? onPressedOnLastPage;

  @override
  State<CupertinoOnboarding> createState() => _CupertinoOnboardingState();
}

class _CupertinoOnboardingState extends State<CupertinoOnboarding> {
  final PageController _pageController = PageController();

  int _currentPage = 0;
  double _currentPageAsDouble = 0;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _pageController.addListener(() {
        setState(() {
          _currentPageAsDouble = _pageController.page!;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 812.h, width: 375.w,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImagePickerImage.onbordingIntroName),
          fit: BoxFit.cover,
        ),
      ),
      // color: widget.backgroundColor ?? _kBackgroundColor.resolveFrom(context),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Skip",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: ColorPicker.blackColor,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 380.h,
            ),
            if (widget.pages.length > 1)
              DotsIndicator(
                dotsCount: widget.pages.length,
                position: 0,reversed: false,
                decorator: DotsDecorator(
                  activeColor: _kActiveDotColor.resolveFrom(context),
                  color: _kInactiveDotColor.resolveFrom(context),
                  activeSize: _kDotSize,
                  size: _kDotSize,
                ),
              ),
            // if (widget.widgetAboveBottomButton != null)
            //   widget.widgetAboveBottomButton!
            // else
            //   const SizedBox(height: 1),
            Expanded(
              child: PageView(
                physics: const BouncingScrollPhysics(),
                controller: _pageController,
                children: widget.pages,
                onPageChanged: (page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    CupertinoButton(
                      borderRadius: widget.bottomButtonBorderRadius ??
                          _bottomButtonBorderRadius,
                      color: widget.bottomButtonColor ??
                          CupertinoTheme.of(context).primaryColor,
                      padding: const EdgeInsets.all(16),
                      onPressed: _currentPage == widget.pages.length
                          ? widget.onPressedOnLastPage
                          : widget.onPressed ?? _animateToNextPage,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        child: Row(
                          children: [
                            const Spacer(),
                            widget.bottomButtonChild,
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _animateToNextPage() async {
    await _pageController.nextPage(
      duration: widget.pageTransitionAnimationDuration,
      curve: widget.pageTransitionAnimationCurve,
    );
  }
}
