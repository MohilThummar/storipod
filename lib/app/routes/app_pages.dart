import 'package:get/get.dart';

import '../modules/createAccount/bindings/create_account_binding.dart';
import '../modules/createAccount/secureaccount/bindings/secureaccount_binding.dart';
import '../modules/createAccount/secureaccount/views/secureaccount_view.dart';
import '../modules/createAccount/userdetail/bindings/userdetail_binding.dart';
import '../modules/createAccount/userdetail/views/userdetail_view.dart';
import '../modules/createAccount/username/bindings/username_binding.dart';
import '../modules/createAccount/username/views/username_view.dart';
import '../modules/createAccount/views/create_account_view.dart';
import '../modules/explore/SeeAllProfile/bindings/see_all_profile_binding.dart';
import '../modules/explore/SeeAllProfile/views/see_all_profile_view.dart';
import '../modules/explore/bindings/explore_binding.dart';
import '../modules/explore/detailProfile/bindings/detail_profile_binding.dart';
import '../modules/explore/detailProfile/views/detail_profile_view.dart';
import '../modules/explore/views/explore_view.dart';
import '../modules/findnewstory/bindings/findnewstory_binding.dart';
import '../modules/findnewstory/views/findnewstory_view.dart';
import '../modules/forgotaccount/bindings/forgotaccount_binding.dart';
import '../modules/forgotaccount/views/forgotaccount_view.dart';
import '../modules/homeStory/bindings/home_story_binding.dart';
import '../modules/homeStory/searchstory/bindings/searchstory_binding.dart';
import '../modules/homeStory/searchstory/views/searchstory_view.dart';
import '../modules/homeStory/storyEdit/bindings/story_edit_binding.dart';
import '../modules/homeStory/storyEdit/views/story_edit_view.dart';
import '../modules/homeStory/views/home_story_view.dart';
import '../modules/introduction/bindings/introduction_binding.dart';
import '../modules/introduction/views/introduction_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/navbarScreen/bindings/navbar_screen_binding.dart';
import '../modules/navbarScreen/views/navbar_screen_view.dart';
import '../modules/notification/bindings/notification_binding.dart';
import '../modules/notification/views/notification_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/personProfileScreen/bindings/person_profile_screen_binding.dart';
import '../modules/personProfileScreen/views/person_profile_screen_view.dart';

import '../modules/recommendation/bindings/recommendation_binding.dart';
import '../modules/recommendation/views/recommendation_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING;

  static final routes = [
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.INTRODUCTION,
      page: () => IntroductionView(),
      binding: IntroductionBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_ACCOUNT,
      page: () => CreateAccountView(),
      binding: CreateAccountBinding(),
      children: [
        GetPage(
          name: _Paths.USERNAME,
          page: () => const UsernameView(),
          binding: UsernameBinding(),
        ),
        GetPage(
          name: _Paths.USERDETAIL,
          page: () => UserdetailView(),
          binding: UserdetailBinding(),
        ),
        GetPage(
          name: _Paths.SECUREACCOUNT,
          page: () => const SecureaccountView(),
          binding: SecureaccountBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.FORGOTACCOUNT,
      page: () => const ForgotaccountView(),
      binding: ForgotaccountBinding(),
    ),
    GetPage(
      name: _Paths.NAVBAR_SCREEN,
      page: () => const NavbarScreenView(),
      binding: NavbarScreenBinding(),
    ),
    GetPage(
      name: _Paths.EXPLORE,
      page: () => const ExploreView(),
      binding: ExploreBinding(),
      children: [
        GetPage(
          name: _Paths.SEE_ALL_PROFILE,
          page: () => const SeeAllProfileView(),
          binding: SeeAllProfileBinding(),
        ),
        GetPage(
          name: _Paths.DETAIL_PROFILE,
          page: () => const DetailProfileView(),
          binding: DetailProfileBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.RECOMMENDATION,
      page: () => const RecommendationView(),
      binding: RecommendationBinding(),
    ),
    GetPage(
      name: _Paths.FINDNEWSTORY,
      page: () => FindnewstoryView(),
      binding: FindnewstoryBinding(),
    ),
    GetPage(
      name: _Paths.HOME_STORY,
      page: () => const HomeStoryView(),
      binding: HomeStoryBinding(),
    ),
    GetPage(
      name: _Paths.SEARCHSTORY,
      page: () => const SearchstoryView(),
      binding: SearchstoryBinding(),
    ),
    GetPage(
      name: _Paths.STORY_EDIT,
      page: () => const StoryEditView(),
      binding: StoryEditBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),

  ];
}
