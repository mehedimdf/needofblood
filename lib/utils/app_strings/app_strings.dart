class   AppStrings {
  static RegExp passRegexp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.{8,}$)');
  static RegExp emailRegexp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static const String fieldCantBeEmpty = "Field can't be empty";
  static const String emailFieldCantBeEmpty = "Please enter your email";
  static const String passwordFieldCantBeEmpty = "Please enter your password";



  ///====================== Onboarding Strings =========================
  static const String loginOrSignUp = "Login or Sign Up";
  static const String login = "Login";
  static const String donateGraph = "View Graph";
  static const String findDonors = "Find Donors";
  static const String requestBlood = "Request";
  static const String graphChart = "Graph Chart";
  static const String myProfile = "My Profile";
  static const String userProfile = "User Profile";
  static const String notification = "Notification";
  static const String accountInfo = "Account Info";
  static const String changePassword = "Change Password";
  static const String needOfBloodInfo = "Need of Blood Info";
  static const String createDonateInfo = "Create Donate Info";
  static const String viewAllDonors = "View All Donors";
  static const String donateThisOrganization = "Donate This";


}
