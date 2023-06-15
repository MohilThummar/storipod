import 'package:get/get.dart';
import '../../view/Analytics/analytics_binding.dart';
import '../../view/Analytics/analytics_view.dart';
import '../../view/createAccount/create_account_binding.dart';
import '../../view/createAccount/create_account_view.dart';
import '../../view/createAccount/secureaccount/secureaccount_binding.dart';
import '../../view/createAccount/secureaccount/secureaccount_view.dart';
import '../../view/createAccount/userdetail/userdetail_binding.dart';
import '../../view/createAccount/userdetail/userdetail_view.dart';
import '../../view/createAccount/username/username_binding.dart';
import '../../view/createAccount/username/username_view.dart';
import '../../view/explore/SeeAllProfile/see_all_profile_binding.dart';
import '../../view/explore/SeeAllProfile/see_all_profile_view.dart';
import '../../view/explore/detailProfile/detail_profile_view.dart';
import '../../view/explore/detail_profile_binding.dart';
import '../../view/explore/explore_binding.dart';
import '../../view/explore/explore_view.dart';
import '../../view/findnewstory/findnewstory_binding.dart';
import '../../view/findnewstory/findnewstory_view.dart';
import '../../view/forgotaccount/forgotaccount_binding.dart';
import '../../view/forgotaccount/forgotaccount_view.dart';
import '../../view/homeStory/home_story_binding.dart';
import '../../view/homeStory/home_story_view.dart';
import '../../view/homeStory/searchstory/searchstory_binding.dart';
import '../../view/homeStory/searchstory/searchstory_view.dart';
import '../../view/homeStory/storyEdit/story_edit_binding.dart';
import '../../view/homeStory/storyEdit/story_edit_view.dart';
import '../../view/introduction/introduction_binding.dart';
import '../../view/introduction/introduction_view.dart';
import '../../view/login/login_binding.dart';
import '../../view/login/login_view.dart';
import '../../view/navbarScreen/navbar_screen_binding.dart';
import '../../view/navbarScreen/navbar_screen_view.dart';
import '../../view/notification/notification_binding.dart';
import '../../view/notification/notification_view.dart';
import '../../view/onboarding/onboarding_binding.dart';
import '../../view/onboarding/onboarding_view.dart';
import '../../view/reactions/profileSetting/profile_setting_binding.dart';
import '../../view/reactions/profileSetting/profile_setting_view.dart';
import '../../view/reactions/reactions_binding.dart';
import '../../view/reactions/reactions_view.dart';
import '../../view/recommendation/recommendation_binding.dart';
import '../../view/recommendation/recommendation_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING;

  static final routes = [
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnBoardingView(),
      binding: OnBoardingBinding(),
    ),
    GetPage(
      name: _Paths.INTRODUCTION,
      page: () => const IntroductionScreen(),
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
          page: () => SecureaccountView(),
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
      page: () => NavbarScreenView(),
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
      page: () => RecommendationView(),
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
      page: () => NotificationView(),
      binding: NotificationBinding(),
      children: [
        GetPage(
          name: _Paths.NOTIFICATION,
          page: () => NotificationView(),
          binding: NotificationBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.REACTIONS,
      page: () => ReactionsView(),
      binding: ReactionsBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SETTING,
      page: () => ProfileSettingView(),
      binding: ProfileSettingBinding(),
    ),
    GetPage(
      name: _Paths.ANALYTICS,
      page: () => AnalyticsView(),
      binding: AnalyticsBinding(),
    ),
  ];
}
