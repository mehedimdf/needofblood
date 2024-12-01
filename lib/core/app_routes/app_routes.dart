// ignore_for_file: prefer_const_constructors
import 'package:get/get.dart';
import 'package:need_of_blood/app/homePage/edit_profile.dart';
import 'package:need_of_blood/app/homePage/lifesyne.dart';
import 'package:need_of_blood/view/components/custom_nav_bar/custom_navbar.dart';
import 'package:need_of_blood/view/screens/donate_graph_screen/donate_graph_screen.dart';
import 'package:need_of_blood/view/screens/find_donors_screen/find_donors_screen.dart';
import 'package:need_of_blood/view/screens/home_screen/account_info_screen/account_info_screen.dart';
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





  ];
}
