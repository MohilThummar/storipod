import 'package:get/get.dart';
import 'package:storipod_app/view/Analytics/Engagement/engagement.screen.dart';
import 'package:storipod_app/view/Analytics/ReachScreen/reach_screen.screen.dart';
import 'package:storipod_app/view/Analytics/analytics_binding.dart';
import 'package:storipod_app/view/Analytics/analytics_view.dart';
import 'package:storipod_app/view/createAccount/create_account_binding.dart';
import 'package:storipod_app/view/createAccount/create_account_view.dart';
import 'package:storipod_app/view/createAccount/secureaccount/secureaccount_binding.dart';
import 'package:storipod_app/view/createAccount/secureaccount/secureaccount_view.dart';
import 'package:storipod_app/view/createAccount/userdetail/userdetail_binding.dart';
import 'package:storipod_app/view/createAccount/userdetail/userdetail_view.dart';
import 'package:storipod_app/view/createAccount/username/username_binding.dart';
import 'package:storipod_app/view/createAccount/username/username_view.dart';
import 'package:storipod_app/view/explore/SeeAllProfile/see_all_profile_binding.dart';
import 'package:storipod_app/view/explore/SeeAllProfile/see_all_profile_view.dart';
import 'package:storipod_app/view/explore/detailProfile/detail_profile_view.dart';
import 'package:storipod_app/view/explore/detail_profile_binding.dart';
import 'package:storipod_app/view/explore/explore_binding.dart';
import 'package:storipod_app/view/explore/explore_view.dart';
import 'package:storipod_app/view/findnewstory/findnewstory_binding.dart';
import 'package:storipod_app/view/findnewstory/findnewstory_view.dart';
import 'package:storipod_app/view/forgotaccount/forgotaccount_binding.dart';
import 'package:storipod_app/view/forgotaccount/forgotaccount_view.dart';
import 'package:storipod_app/view/homeStory/home_story_binding.dart';
import 'package:storipod_app/view/homeStory/home_story_view.dart';
import 'package:storipod_app/view/homeStory/searchstory/searchstory_binding.dart';
import 'package:storipod_app/view/homeStory/searchstory/searchstory_view.dart';
import 'package:storipod_app/view/homeStory/storyEdit/story_edit_binding.dart';
import 'package:storipod_app/view/homeStory/storyEdit/story_edit_view.dart';
import 'package:storipod_app/view/introduction/introduction_binding.dart';
import 'package:storipod_app/view/introduction/introduction_view.dart';
import 'package:storipod_app/view/login/login_binding.dart';
import 'package:storipod_app/view/login/login_view.dart';
import 'package:storipod_app/view/navbarScreen/navbar_screen_binding.dart';
import 'package:storipod_app/view/navbarScreen/navbar_screen_view.dart';
import 'package:storipod_app/view/notification/notification_binding.dart';
import 'package:storipod_app/view/notification/notification_view.dart';
import 'package:storipod_app/view/onboarding/onboarding_binding.dart';
import 'package:storipod_app/view/onboarding/onboarding_view.dart';
import 'package:storipod_app/view/reactions/profileSetting/Wallet/wallet.screen.dart';
import 'package:storipod_app/view/reactions/profileSetting/account/account.screen.dart';
import 'package:storipod_app/view/reactions/profileSetting/changePassword/change_password.screen.dart';
import 'package:storipod_app/view/reactions/profileSetting/profile_setting_binding.dart';
import 'package:storipod_app/view/reactions/profileSetting/profile_setting_view.dart';
import 'package:storipod_app/view/reactions/reactions_binding.dart';
import 'package:storipod_app/view/reactions/reactions_view.dart';
import 'package:storipod_app/view/recommendation/recommendation_binding.dart';
import 'package:storipod_app/view/recommendation/recommendation_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();


  static const intIal = Routes.onBoarding;

  static final routes = [
    GetPage(
      name: _Paths.onBoarding,
      page: () => const OnBoardingView(),
      binding: OnBoardingBinding(),
    ),
    GetPage(
      name: _Paths.introduction,
      page: () => const IntroductionScreen(),
      binding: IntroductionBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.createAccount,
      page: () => const CreateAccountView(),
      binding: CreateAccountBinding(),
      children: [
        GetPage(
          name: _Paths.username,
          page: () => const UsernameView(),
          binding: UsernameBinding(),
        ),
        GetPage(
          name: _Paths.userDetail,
          page: () => const UserdetailView(),
          binding: UserdetailBinding(),
        ),
        GetPage(
          name: _Paths.secureAccount,
          page: () => const SecureAccountView(),
          binding: SecureaccountBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.forgotAccount,
      page: () => const ForgotaccountView(),
      binding: ForgotaccountBinding(),
    ),
    GetPage(
      name: _Paths.changePassword,
      page: () => const ChangePasswordScreen(),
      binding: ReactionsBinding(),
    ),
    GetPage(
      name: _Paths.navbarScreen,
      page: () => const NavbarScreenView(),
      binding: NavbarScreenBinding(),
    ),
    GetPage(
      name: _Paths.explore,
      page: () => const ExploreView(),
      binding: ExploreBinding(),
      children: [
        GetPage(
          name: _Paths.seeAllProfile,
          page: () => const SeeAllProfileView(),
          binding: SeeAllProfileBinding(),
        ),
        GetPage(
          name: _Paths.detailProfile,
          page: () => const DetailProfileView(),
          binding: DetailProfileBinding(),
        ),
      ],
    ),

    GetPage(
      name: _Paths.recommendation,
      page: () => const RecommendationView(),
      binding: RecommendationBinding(),
    ),
    GetPage(
      name: _Paths.findNewStory,
      page: () => const FindnewstoryView(),
      binding: FindnewstoryBinding(),
    ),
    GetPage(
      name: _Paths.homeStory,
      page: () => const HomeStoryView(),
      binding: HomeStoryBinding(),
    ),
    GetPage(
      name: _Paths.searchStory,
      page: () => const SearchstoryView(),
      binding: SearchstoryBinding(),
    ),
    GetPage(
      name: _Paths.storyEdit,
      page: () => const StoryEditView(),
      binding: StoryEditBinding(),
    ),
    GetPage(
      name: _Paths.notification,
      page: () => const NotificationView(),
      binding: NotificationBinding(),

    ),
    GetPage(
      name: _Paths.reactions,
      page: () => const ReactionsView(),
      binding: ReactionsBinding(),
    ),
    GetPage(
      name: _Paths.profileSetting,
      page: () => const ProfileSettingView(),
      binding: ProfileSettingBinding(),

    ),
    GetPage(
      name: _Paths.wallet,
      page: () => const WalletScreen(),
      binding: OnBoardingBinding(),
    ),
    GetPage(
      name: _Paths.account,
      page: () =>  const AccountScreen(),
      binding: OnBoardingBinding(),
    ),
    GetPage(
      name: _Paths.analytics,
      page: () => const AnalyticsView(),
      binding: AnalyticsBinding(),

    ),
    GetPage(
      name: _Paths.reachScreen,
      page: () => const ReachScreenScreen(),
      binding: AnalyticsBinding(),

    ),
    GetPage(
        name: _Paths.reachScreen,
        page: () => const EngagementScreen(),
        binding: AnalyticsBinding(),

    )
  ];
}

