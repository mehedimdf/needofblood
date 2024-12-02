// ignore_for_file: prefer_const_constructors
import 'package:get/get.dart';
import 'package:need_of_blood/app/homePage/edit_profile.dart';
import 'package:need_of_blood/view/screens/donate_graph_screen/donate_graph_screen.dart';
import 'package:need_of_blood/view/screens/find_donors_screen/find_donors_screen.dart';
import 'package:need_of_blood/view/screens/home_screen/account_info_screen/account_info_screen.dart';
import 'package:need_of_blood/view/screens/home_screen/account_info_screen/app_developer_screen/app_developer_screen.dart';
import 'package:need_of_blood/view/screens/home_screen/account_info_screen/change_password_screen/change_password_screen.dart';
import 'package:need_of_blood/view/screens/home_screen/account_info_screen/edit_profile_screen/edit_profile.dart';
import 'package:need_of_blood/view/screens/home_screen/account_info_screen/need_of_blood_screen/need_of_blood_screen.dart';
import 'package:need_of_blood/view/screens/home_screen/all_view_donner_screen/all_view_donner_screen.dart';
import 'package:need_of_blood/view/screens/home_screen/banner_screen/banner_screen_one.dart';
import 'package:need_of_blood/view/screens/home_screen/blood_donate_account_screen/blood_donate_account_screen.dart';
import 'package:need_of_blood/view/screens/home_screen/home_screen.dart';
import 'package:need_of_blood/view/screens/home_screen/notification_screen/notification_screen.dart';
import 'package:need_of_blood/view/screens/home_screen/personal_profile_screen/personal_profile_screen.dart';
import 'package:need_of_blood/view/screens/home_screen/user_profile_screen/user_profile_screen.dart';
import 'package:need_of_blood/view/screens/request_screen/request_screen.dart';

///=========================App Routes=========================
class AppRoutes {
  static const String splashScreen = "/SplashScreen";
  static const String homeScreen = "/HomeScreen";
  static const String findDonorsScreen = "/FindDonorsScreen";
  static const String donateGraphScreen = "/DonateGraphScreen";
  static const String requestScreen = "/RequestScreen";
  static const String personalProfileScreen = "/PersonalProfileScreen";
  static const String userProfileScreen = "/UserProfileScreen";
  static const String notificationScreen = "/NotificationScreen";
  static const String accountInfoScreen = "/AccountInfoScreen";
  static const String editProfile = "/EditProfile";
  static const String changePasswordScreen = "/ChangePasswordScreen";
  static const String needOfBloodScreen = "/NeedOfBloodScreen";
  static const String appDeveloperScreen = "/AppDeveloperScreen";
  static const String bloodDonateAccountScreen = "/BloodDonateAccountScreen";
  static const String bannerScreenOne = "/BannerScreenOne";
  static const String allViewDonnerScreen = "/AllViewDonnerScreen";






  static List<GetPage> routes = [
    ///===========================Authentication==========================
    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: findDonorsScreen, page: () => const FindDonorsScreen()),
    GetPage(name: donateGraphScreen, page: () => DonateGraphScreen()),
    GetPage(name: requestScreen, page: () => RequestScreen()),
    GetPage(name: personalProfileScreen, page: () => PersonalProfileScreen()),
    GetPage(name: userProfileScreen, page: () => UserProfileScreen()),
    GetPage(name: notificationScreen, page: () => NotificationScreen()),
    GetPage(name: accountInfoScreen, page: () => AccountInfoScreen()),
    GetPage(name: editProfile, page: () => EditProfile()),
    GetPage(name: changePasswordScreen, page: () => ChangePasswordScreen()),
    GetPage(name: needOfBloodScreen, page: () => NeedOfBloodScreen()),
    GetPage(name: appDeveloperScreen, page: () => AppDeveloperScreen()),
    GetPage(name: bloodDonateAccountScreen, page: () => BloodDonateAccountScreen()),
    GetPage(name: bannerScreenOne, page: () => BannerScreenOne()),
    GetPage(name: allViewDonnerScreen, page: () => AllViewDonnerScreen()),





  ];
}
