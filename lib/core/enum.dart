import 'package:flutter/material.dart';
/// Use [ChartType] for apply predefine button color
enum ChartType {
  lineChart,
  barChart,
  areaChart,
  piaChart,
  colomnChart,
  advancedSmileChart,
  lineChartWithArea,
  simpleLineChart,
  simplePieChart,
  animatingPieChart,
  lineScatterChart,
  overlapBars,
  chartJsBarChart,
  radarChart,
  polarChart,
  multipleStaticChart,
}

///font size
enum FS {
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
  fourteen(14.0),
  fifteen(15.0),
  sixteen(16.0),
  seventeen(17.0),
  eighteen(18.0),
  nineteen(19.0),
  twenty(20.0),
  twentyOne(21.0),
  twentyTwo(22.0),
  twentyFour(24.0),
  twentyEight(28.0),
  thirty(30.0),
  thirtyThree(33.0),
  forty(40.0),
  fortyFive(45.0),
  fifty(50.0),
  seventy(70.0),
  seventyTwo(72.0),
  eightyNine(89.0),
  ninetyTwo(92.0),
  hundred(100.0),
  oneHundredFour(104.0),
  hundredThirty(130.0),
  hundredThirtyEight(138.0),
  hundredForty(140.0),
  hundredFiftyEight(158.0),
  hundredSeventyNine(179.0),
  hundredNinety(190.0),
  threeHundred(300.0),
  threeHundredFortyThree(343.0);

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
  hundred(100),
  hundredForty(140),
  hundredFiftyEight(158),
  hundredSeventyNine(179),
  hundredNinety(190),
  threeHundred(300),
  threeHundredFortyThree(343);

  final int val;

  const INT(this.val);
}

enum TO {
  ellipsis(TextOverflow.ellipsis),
  clip(TextOverflow.clip),
  fade(TextOverflow.fade),
  visible(TextOverflow.visible);

  final TextOverflow val;

  const TO(this.val);
}

enum TA {
  center(TextAlign.center),
  right(TextAlign.right),
  left(TextAlign.left),
  justify(TextAlign.justify),
  end(TextAlign.end),
  start(TextAlign.start);

  final TextAlign val;

  const TA(this.val);
}

enum Assets {
  appLogo("assets/unidoc_logo.png"),
  introIcon("assets/images/introicon.png"),
  nextSvg("assets/icon/next.svg"),
  lottieAsset("assets/4257-loading-or-empty-state.json"),
  bell("assets/Bell.png"),
  appIcon("assets/images/app_icon.png"),
  addFamilyAss("assets/settings/AddUser.svg"),
  supportAss("assets/settings/Helpsupport.svg"),
  sendFeeBackAss("assets/settings/SendFeedback.svg"),
  aboutUniDocAss("assets/settings/About_us.svg"),
  notificationSettingsAss("assets/settings/Notificationsettings.svg"),
  rateUniDocAppAss("assets/settings/RateUiniDocApp.svg"),
  logoutAss("assets/settings/LogOut.svg"),
  person('assets/images/person.jpg');

  final String val;

  const Assets(this.val);
}

enum AppString {
  one("1"),
  two("2"),
  hi("Hi, "),
  version("V"),
  currentLocation("Current Location"),
  specializations("Specializations"),
  UniDoc("UniDoc"),
  drAppointmentBooking("Doctor Appointment Booking"),
  appInUAE("App in UAE"),
  skip("Skip"),
  seeAll("See All"),
  next("Next"),
  getStarted("Get Started"),
  myAppointments("My Appointments"),
  updateNow("UPDATE NOW"),
  updateAvailable("Update Available"),
  newVersionAvailable('A new version of app is available.'),
  upcoming('Upcoming'),
  completed('Completed'),
  cancelled('Cancelled'),
  noCancelledAppointments('No cancelled appointments'),
  noCompletedAppointments('No completed appointments'),
  noUpcomingAppointments('No upcoming appointments'),
  notifications("Notifications"),
  noNotifications("No Notifications"),
  back("Back"),
  notificationDetails("Notification Details"),
  settings("settings"),
  g("G"),
  guest("Guest"),
  viewProfile("View Profile"),
  addFamily('Add Family'),
  support('Support'),
  sendUsFeedback('Send us Feedback'),
  aboutUniDoc('About UniDoc'),
  notificationSettings('Notification Settings'),
  rateUniDocApp('Rate UniDoc App'),
  logout('Log Out'),
  login('Login'),
  appVersion('App version'),
  findDoctor('Find Doctor'),
  noResultFound('No Result Found'),
  hospitalsNearYou('Hospitals near you'),
  away("away"),
  cWithYourInsurancePolicy("Clinics with your insurance policy"),
  drAvailableNearYou("Doctors available near you"),
  drOrHospital("Doctor or hospital"),
  specialities("Specialities"),
  clear("Clear"),
  feedback("Feedback"),
  aboutUs('About UniDoc'),
  newAppointment("New Appointment"),
  doctorProfile("Doctor Profile"),
  hospitalDetails("Hospital Details"),
  doctorsNearYou("Doctors near you"),
  toContinue('to continue'),
  please('Please '),
  enterYourDetails('enter your details '),
  phoneWithCountryCode('+971 '),
  km('Km '),
  location("Location"),
  doctorsAvailableNearYou("Doctors available near you"),
  android("https://play.google.com/store/apps/details?id=com.ae.unidoc"),
  ios("https://itunes.apple.com/in/app/unidoc-doctor-appointment/id1527263282?mt=8");

  final String val;

  const AppString(this.val);
}

enum BF {
  contain(BoxFit.contain);

  final BoxFit val;

  const BF(this.val);
}

enum EMainAxisAlignment {
  start(MainAxisAlignment.start),
  end(MainAxisAlignment.end),
  center(MainAxisAlignment.center),
  spaceBetween(MainAxisAlignment.spaceBetween),
  spaceAround(MainAxisAlignment.spaceAround),
  spaceEvenly(MainAxisAlignment.spaceEvenly);

  final MainAxisAlignment val;

  const EMainAxisAlignment(this.val);
}

enum ECrossAxisAlignment {
  start(CrossAxisAlignment.start),
  end(CrossAxisAlignment.end),
  center(CrossAxisAlignment.center),
  stretch(CrossAxisAlignment.stretch),
  baseline(CrossAxisAlignment.baseline);

  final CrossAxisAlignment val;

  const ECrossAxisAlignment(this.val);
}

enum EMainAxisSize{
  min(MainAxisSize.min),
  max(MainAxisSize.max);
  final MainAxisSize val;
  const EMainAxisSize(this.val);
}

enum EAxis{
  horizontal(Axis.horizontal),
  vertical(Axis.vertical);
  final Axis val;
  const EAxis(this.val);
}

enum EFlexFit{
  loose(FlexFit.loose),
  tight(FlexFit.tight);
  final FlexFit val;
  const EFlexFit(this.val);
}

enum EBoxShape{
  rectangle(BoxShape.rectangle),
  circle(BoxShape.circle);
  final BoxShape val;
  const EBoxShape (this.val);

}

/// to do later
enum CL {
  white(Colors.white),
  black(Colors.black),
  primaryDarkBlue(Color(0xff0C45B0));

  final Color color;

  const CL(this.color);
}

enum EAlignment {
  topCenter(Alignment.topCenter),
  bottomCenter(Alignment.bottomCenter),
  centerLeft(Alignment.centerLeft),
  center(Alignment.center);

  final Alignment val;

  const EAlignment(this.val);
}


