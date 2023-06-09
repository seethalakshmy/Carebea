import 'package:flutter/material.dart';



/// App Strings
enum AppString {
  login("Login"),
  emailAddress("Email Address"),
  password("Password"),
  forgotPassword("Forgot Password ?"),
  resetPassword("Reset Password"),
  resetPasswordDescription(
      "Enter your registered mail id to receive password\nreset link"),
  sendRestInstructions("Send  reset instructions"),
  createNewPassword("Please create your new password"),
  newPassword("New Password"),
  confirmPassword("Confirm Password"),
  confirmResetPassword("Confirm Reset Password"),
  dashboard("Dashboard"),
  showing("Showing"),
  entries("entries"),
  to("to"),
  of("of"),
  careAmbassador("Care Ambassador"),
  userManagement("User Management"),
  userManagementDetail("User Management Detail"),
  transactionManagement("User Management Detail"),
  careAmbassadorDetail("Care Ambassador Detail"),
  id("ID"),
  slNo("SL No"),
  firstName("First Name"),
  filter("Filter"),
  lastName("Last Name"),
  name("Name"),
  newRequest("New Request"),
  activeCareAmbassador("Active Care Ambassador"),
  phoneNumber("Phone Number"),
  status("Status"),
  search("Search"),
  client("Client"),
  clientProfiles("Client Profiles"),
  nameAndAge("Name & Age"),
  totalServiceCompleted("Total Service Completed"),
  service("Service"),
  services("Services"),
  serviceCompleted("Services Completed"),
  canceledRequest("Canceled Request"),
  reviewGiven("Review Given"),
  serviceList("Service List"),
  location("Location"),
  startDateTime("Start Date & Start Time"),
  endDateTime("End Date & End Time"),
  totalServiceFee("Total Service Fee"),
  pending("Pending"),
  pendingDocuments("Pending Documents"),
  completed("Completed"),
  canceled("Canceled"),
  onGoing("Ongoing"),
  upcoming("Upcoming"),
  active("Active"),
  inActive("Inactive"),
  clientsCustomer("Clients/Customers"),
  role("Role"),
  previous("Previous"),
  next("Next"),
  create("Create"),
  noUsersFound("No Users found!"),
  profileCompletion("Profile Completion"),
  logout("Logout"),
  noProfiles("No Profiles Found!"),
  creditCardDetails("Credit card details"),
  paymentMethod("Payment Method"),
  accountHolderName("Account Holder Name"),
  accountNumber("Account Number"),
  expirationDate("Expiration Date"),
  securityNo("Security NO"),
  routingNo("Routing Number"),
  emptyCareGivers("No Care Ambassador found!"),
  schedules("Schedules"),
  accountDetails("Account Details"),
  earnings("Earnings"),
  newServiceRequest("New Service Request"),

  ///validations
  emptyEmail("Email address shouldn't be empty"),
  validEmail("Enter valid email address"),
  emptyPassword("Password shouldn't be empty"),
  passwordLengthError("Password should be at least 8 characters"),
  emptyConfirmPassword("Confirm password shouldn't be empty"),
  notMatchConfirmPassword("Confirm password doesn't match");

  final String val;

  const AppString(this.val);
}


/// App Colors
enum AppColor {
  backgroundColor(Color(0xffE9F0F9)),
  primaryColor(Color(0xff344280)),
  darkBlue(Color(0xff070329)),
  lightBlue1(Color(0xffDAD8EE)),
  black(Color(0xff000000)),
  black2(Color(0xff020E1A)),
  matBlack(Color(0xff324665)),
  matBlack2(Color(0xff596483)),
  white(Color(0xffFFFFFF)),
  offWhite(Color(0xffE4E8E5)),
  subTitleColor(Color(0xff727E8A)),
  label(Color(0xff727E8A)),
  menuDisable(Color(0xff0D0D0E)),
  borderColor(Color(0xffBAC0D2)),
  rowBackgroundColor(Color(0xffF3F6F9)),
  columColor(Color(0xff989DB7)),
  columColor2(Color(0xff8D94B4)),
  rowColor(Color(0xff464E5F)),
  dividerColor(Color(0xffEDF0FC)),
  dividerColor2(Color(0xffDFE8F1)),
  darkGreen(Color(0xff479C88)),
  green(Color(0xff42C25F)),
  green2(Color(0xff50CD89)),
  green3(Color(0xffC9F7D3)),
  amberAccentLight(Color(0xffFFF0BF)),
  amber(Color(0xffCFA92B)),
  amber2(Color(0xffE7B75A)),
  lightGrey(Color(0xffE1E8F0)),
  inactive(Color(0xffB3BDC8)),
  lightGrey2(Color(0xff8793AB)),
  lightGrey3(Color(0xff8E94A1)),
  lightGrey4(Color(0xffB5B5C4)),
  lightGrey5(Color(0xffA0A4B7)),
  lightGrey6(Color(0xffA7AAA8)),
  lightGrey7(Color(0xff7E889D)),
  darkGrey(Color(0xff576A83)),
  darkGrey2(Color(0xff496379)),
  lightWhite(Color(0xffEEF4FA)),
  red(Color(0xffE75A77)),
  red2(Color(0xffFD4242)),
  blue(Color(0xff556DD3)),
  success (Color(0xff53a653)),
  warning ( Color(0xffffcc00)),
  error ( Color(0xffe10725)),
  info ( Color(0xff4fc3f7)),
  successDark(Color(0xff408140)),
  warningDark(Color(0xffffb800)),
  errorDark(Color(0xffc7051b)),
  infoDark (Color(0xff03a9f4)),
  dark (Color(0xff141414)),
  transparent(Colors.transparent);

  final Color val;

  const AppColor(this.val);
}

/// Assets
enum IMG {
  blackLogo("assets/icons/black_logo.svg"),
  colorLogo("assets/icons/color_logo.svg"),
  drawer("assets/icons/drawer.svg"),
  eye("assets/icons/ic_eye.svg"),
  edit("assets/icons/ic_edit.svg"),
  delete("assets/icons/ic_delete.svg"),
  active("assets/icons/ic_active.svg"),
  inActive("assets/icons/ic_inactive.svg"),
  notification("assets/icons/ic_notification.svg"),
  notificationDot("assets/icons/ic_notification_dot.svg"),
  search("assets/icons/ic_search.svg"),
  profilePlaceHolder("assets/icons/ic_profile_place_holder.svg"),
  location("assets/icons/ic_location.svg"),
  email("assets/icons/ic_email.svg"),
  phone("assets/icons/ic_phone.svg"),
  arrowDown("assets/icons/ic_arrow_down.svg"),
  refresh("assets/icons/ic_refresh.svg"),
  notFound("assets/icons/ic_not_found.svg"),


  ssn("assets/icons/ic_ssn.svg"),
  warning("assets/icons/ic_warning.svg"),
  drawerPng("assets/images/drawer.png"),
  colorLogoPng("assets/images/color_logo.png"),
  blackLogoPng("assets/images/black_logo.png"),
  careGiver("assets/images/caregiver.png"),
  person("assets/images/ic_person.png"),
  profile("assets/images/profile.png");

  final String val;

  const IMG(this.val);
}

///font size
enum FS {
  font11(11.0),
  font12(12.0),
  font13(13.0),
  font14(14.0),
  font15(15.0),
  font16(16.0),
  font17(17.0),
  font18(18.0),
  font19(19.0),
  font20(20.0),
  font21(21.0),
  font22(22.0),
  font23(23.0),
  font24(24.0),
  font25(25.0),
  font26(26.0),
  font27(27.0),
  font28(28.0),
  font29(29.0),
  font30(30.0),
  font31(31.0),
  font32(32.0),
  font33(33.0),
  font34(34.0),
  font35(35.0),
  font36(36.0);

  final double val;

  const FS(this.val);
}

/// font weight
enum FW {
  w400(FontWeight.w400),
  w500(FontWeight.w500),
  w600(FontWeight.w600),
  w700(FontWeight.w700),
  w800(FontWeight.w800),
  w900(FontWeight.w900),
  bold(FontWeight.bold);

  final FontWeight val;

  const FW(this.val);
}

enum DBL {
  pointFive(.5),
  zero(0.0),
  one(1.0),
  two(2.0),
  three(3.0),
  threePointSeven(3.7),
  four(4.0),
  five(5.0),
  six(6.0),
  seven(7.0),
  eight(8.0),
  nine(9.0),
  ten(10.0),
  eleven(11.0),
  twelve(12.0),
  thirteen(13.0),
  thirteenPointFive(13.5),
  fourteen(14.0),
  fifteen(15.0),
  sixteen(16.0),
  seventeen(17.0),
  eighteen(18.0),
  nineteen(19.0),
  twenty(20.0),
  twentyOne(21.0),
  twentyTwo(22.0),
  twentyThree(23.0),
  twentyFour(24.0),
  twentyFive(25.0),
  twentySeven(27.0),
  twentyEight(28.0),
  twentyNine(29.0),
  thirty(30.0),
  thirtyThree(33.0),
  thirtyFive(35.0),
  forty(40.0),
  fortyFive(45.0),
  fortyEight(48.0),
  fifty(50.0),
  fiftyFive(55.0),
  sixty(60.0),
  sixtyEight(68.0),
  seventy(70.0),
  seventyTwo(72.0),
  seventyFive(75.0),
  eighty(80.0),
  eightyNine(89.0),
  ninetyTwo(92.0),
  ninetyFive(95.0),
  hundred(100.0),
  oneHundredFour(104.0),
  oneTwenty(120.0),
  oneThirty(130.0),
  oneThirtyEight(138.0),
  oneForty(140.0),
  oneFifty(150.0),
  oneFiftyEight(158.0),
  oneSixty(160.0),
  oneSixtySix(166.0),
  oneSeventy(170.0),
  oneSeventySix(176.0),
  oneSeventyNine(179.0),
  oneEighty(180.0),
  hundredNinety(190.0),
  twoHundred(200.0),
  twoForty(240),
  twoNinety(290),
  threeHundred(300.0),
  threeFifteen(315.0),
  threeFortyThree(343.0),
  threeNinetyTwo(392.0),
  fourHundred(400.0),
  fourFifty(450.0),
  fiveFifty(550.0),
  nineFifty(950.0);

  final double val;

  const DBL(this.val);
}

enum INT {
  zero(0),
  one(1),
  two(2),
  three(3),
  four(4),
  five(5),
  six(6),
  seven(7),
  eight(8),
  nine(9),
  ten(10),
  eleven(11),
  twelve(12),
  thirteen(13),
  fourteen(14),
  fifteen(15),
  sixteen(16),
  seventeen(17),
  eighteen(18),
  nineteen(19),
  twenty(20),
  thirty(30),
  thirtyThree(33),
  forty(40),
  fortyEight(48),
  fifty(50),
  eightyNine(89),
  hundred(100);

  final int val;

  const INT(this.val);
}

enum ButtonType { secondary, warning, info, success, error }























