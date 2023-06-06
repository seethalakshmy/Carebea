import 'package:flutter/material.dart';
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
  careGiverManagement("Caregiver Management"),
  userManagement("User Management"),
  transactionManagement("Transaction Management"),
  id("ID"),
  slNo("SL No"),
  firstName("First Name"),
  lastName("Last Name"),
  name("Name"),
  phoneNumber("Phone Number"),
  status("Status"),
  search("Search"),
  client("Client"),
  service("Service"),
  serviceList("Service List"),
  location("Location"),
  dateTime("Date/Time"),
  pending("Pending"),
  completed("Completed"),
  active("Active"),
  inActive("Inactive"),
  clientsCustomer("Clients/Customers"),
  transaction("Transaction"),
  role("Role"),
  previous("Previous"),
  next("Next"),
  create("Create"),
  transactionId("Transaction Id"),
  serviceId("Service Id"),
  transactionType("Transaction Type"),
  paidFor("Paid For"),
  paidTo("Paid To"),
  receivedFrom("Received From"),
  amount("Amount"),
  overallTransactions("Overall Transactions"),
  allTransactions("All Transactions"),
  cancel("Cancel"),

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
  lightGrey(Color(0xffE1E8F0)),
  inactive(Color(0xffB3BDC8)),
  lightGrey2(Color(0xff8793AB)),
  lightGrey3(Color(0xff8E94A1)),
  lightGrey4(Color(0xffB5B5C4)),
  lightGrey5(Color(0xffA0A4B7)),
  lightGrey6(Color(0xffA7AAA8)),
  red(Color(0xffE75A77)),
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
  font07(07.0),
  font08(08.0),
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
  twelvePointFive(12.5),
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
  eightyNine(89.0),
  ninetyTwo(92.0),
  ninetyFive(95.0),
  hundred(100.0),
  oneHundredFour(104.0),
  hundredThirty(130.0),
  hundredThirtyEight(138.0),
  hundredForty(140.0),
  hundredFiftyEight(158.0),
  hundredSixty(160.0),
  hundredSeventySix(176.0),
  hundredSeventyNine(179.0),
  hundredNinety(190.0),
  threeHundred(300.0),
  threeFifteen(315.0),
  threeHundredFortyThree(343.0),
  fourFifty(450.0),
  fiveFifty(550.0);

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

enum FIT {
  fill(BoxFit.fill),
  contain(BoxFit.contain),
  cover(BoxFit.cover);

  final BoxFit val;

  const FIT(this.val);
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

enum EMainAxisSize {
  min(MainAxisSize.min),
  max(MainAxisSize.max);

  final MainAxisSize val;

  const EMainAxisSize(this.val);
}

enum EAxis {
  horizontal(Axis.horizontal),
  vertical(Axis.vertical);

  final Axis val;

  const EAxis(this.val);
}

enum EFlexFit {
  loose(FlexFit.loose),
  tight(FlexFit.tight);

  final FlexFit val;

  const EFlexFit(this.val);
}

enum EBoxShape {
  rectangle(BoxShape.rectangle),
  circle(BoxShape.circle);

  final BoxShape val;

  const EBoxShape(this.val);
}

enum EAlignment {
  topCenter(Alignment.topCenter),
  topRight(Alignment.topRight),
  bottomCenter(Alignment.bottomCenter),
  centerLeft(Alignment.centerLeft),
  centerRight(Alignment.centerRight),
  center(Alignment.center);

  final Alignment val;

  const EAlignment(this.val);
}

enum EAutoValidate {
  always(AutovalidateMode.always),
  disabled(AutovalidateMode.disabled);

  final AutovalidateMode val;

  const EAutoValidate(this.val);
}

enum ETextInputAction {
  done(TextInputAction.done),
  next(TextInputAction.next);

  final TextInputAction val;

  const ETextInputAction(this.val);
}

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
