import 'package:flutter/material.dart';

/// App Strings
enum AppString {
  userId("USER ID"),
  login("Login"),
  mandatorySymbol("*"),
  select("Select"),
  selectHint("--Select--"),
  selectDate("Select Date"),
  startTime("Start Time"),
  endTime("End Time"),
  ok("Ok"),
  profile("Profile"),
  profileDetails("Profile Details"),
  goToProfile("Go to Profile "),
  selectedMenuIndex("selectedindex"),
  userProfile("User Profile"),
  backToDashBoard("Back to Dashboard"),
  emailAddress("Email Address"),
  email("Email"),
  basicServices("Basic Services"),
  specialServices("Special Services"),
  password("Password"),
  reviewPending("Review Pending"),
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
  dateTime("Date/Time"),
  creditTo("Credit To"),
  to("to"),
  of("of"),
  pendingDocumentsReminder("Documents are pending to upload."),
  careAmbassador("Care Ambassador"),
  userManagement("User Management"),
  roleManagement("Role Management"),
  adminManagement("Admin Management"),
  roleManage("Role Manage"),
  adminManage("Admin Manage"),
  userManagementDetail("User Management Detail"),
  careAmbassadorDetail("Care Ambassador Detail"),
  careAmbassadorVerification("Care Ambassador Verification"),
  transactionManagement("Transaction Management"),
  careAmbassadorProfile("Care Ambassador Profile"),
  completedServiceRequest("Completed Service Request"),
  newServiceRequest("New Service Request"),
  canceledServiceRequest("Canceled Service Request"),
  onGoingServiceRequest("Ongoing Service Request"),
  upcomingServiceRequest("Upcoming Service Request"),
  transactionDetails("Transaction Details"),
  qualifiedForCareAmbassador("Qualified for care ambassador's training ."),
  caregiverCreation("Care Ambassador Creation"),
  selectYourStateFirst("Please select your state first"),
  onBoarding("On-boarding"),
  id("ID"),
  slNo("SL No"),
  firstName("First Name"),
  filter("Filter"),
  lastName("Last Name"),
  serviceRequestID("Service Request ID"),
  requestedStartDateTime("Requested Start Date & Time"),
  requestedEndDateTime("Requested End Date & Time"),
  doesClientHavePets("Does the client  have pets?"),
  isSmokerInHouseHold("Is there a smoker in the household?"),
  isAdvanceDirective("Does the client have an Advance Directive?"),
  name("Name"),
  accessTo("Access to"),
  newRequest("New Request"),
  activeCareAmbassador("Active Care Ambassador"),
  phoneNumber("Phone Number"),
  mobileNumber("Mobile Number"),
  status("Status"),
  serviceFee("Service Fee"),
  time("Time"),
  search("Search"),
  client("Client"),
  clientProfiles("Client Profiles"),
  clientName("Client Name"),
  nameAndAge("Name & Age"),
  totalServiceCompleted("Total Service Completed"),
  service("Service"),
  sendTrainingRequest("Send Training Request"),
  notify("Notify"),
  serviceDetails("Service Details"),
  services("Services"),
  selectAllServices("Select all the services you are able to do"),
  addMoreReference("Add more reference"),
  serviceCompleted("Services Completed"),
  serviceInCompleted("Services Incompleted"),
  serviceNeeded("Services Needed"),
  serviceNeededCount("Services Needed Count"),
  canceledRequest("Canceled Request"),
  reviewGiven("Review Given"),
  serviceList("Service List"),
  location("Location"),
  colon(": "),
  startDateStartTime("Start Date & Start Time"),
  startDateTime("Start Date & Time"),
  suspectedThings("The suspected things during the shift"),
  reportedIssuesByCareAmbassador(
      "The reported issue by the care ambassador during the shift"),
  otherIssues("Other issues"),
  rating("Rating"),
  submit("Submit"),
  averageReviewFromClient("Average Review \nFrom Client"),
  feedBack("Feedback"),
  endDateEndTime("End Date & End Time"),
  endDateTime("End Date & Time"),
  totalServiceFee("Total Service Fee"),
  pending("Pending"),
  personalDetails1("Personal Details"),
  qualificationTestResult("Qualification & Test Result"),
  preference("Preference"),
  agreement("Agreement"),
  reference("Reference"),
  buildYourProfile("Build Your Profile"),
  tellAboutYou("Tell about you"),
  addBankAccountDetails("Add your banck account details"),
  aboutYou("About You"),
  tourHobbies("Tour Hobbies"),
  homeHealthAidAgreement("Home Health Aid Agreement"),
  setupCompensation("Setup Compensation Method"),
  loveBeingCaregiver("Why you love being a care ambassador"),
  provideDigitalSign("Provide your digital signature"),
  pendingDocuments("Pending Documents"),
  reasonForCancellation("Reason for cancellation :"),
  reasonForInCompletion("Reason for Incompletion"),
  completed("Completed"),
  canceled("Canceled"),
  onGoing("Ongoing"),
  upcoming("Upcoming"),
  active("Active"),
  inActive("Inactive"),
  inDoor("Indoor"),
  outDoor("Outdoor"),
  both("Both"),
  clientsCustomer("Clients/Customers"),
  isCompletedTraining(
      "Is the Care ambassadors  Completed the training process?"),
  isCompletedInterView(
      "Is the Care ambassadors  Completed the interview process?"),
  transaction("Transaction"),
  role("Role"),
  assignModule("Assign Module"),
  assignedModule("Assigned Module"),
  assign("Assign"),
  previous("Previous"),
  next("Next"),
  create("Create"),
  transactionId("Transaction ID"),
  serviceId("Service ID"),
  transactionType("Transaction Type"),
  paidFor("Paid For"),
  paidTo("Paid To"),
  receivedFrom("Received From"),
  amount("Amount"),
  overallTransactions("Overall Transactions"),
  allTransactions("All Transactions"),
  cancel("Cancel"),
  save("Save"),
  update("Update"),
  yes("Yes"),
  no("No"),
  deleteRole("Are you sure want to delete this role?"),
  noUsersFound("No Users found!"),
  profileCompletion("Profile Completion"),
  logout("Logout"),
  noProfiles("No Profiles Found!"),
  creditCardDetails("Credit card details"),
  paymentMethod("Payment Method"),
  paymentStatus("Payment Status"),
  accountHolderName("Account Holder Name"),
  accountNumber("Account Number"),
  expirationDate("Expiration Date"),
  securityNo("Security NO"),
  routingNo("Routing Number"),
  emptyCareGivers("No Care Ambassador found!"),
  emptyRoles("No Roles found!"),
  emptyadmin("No Admins found!"),
  schedules("Schedules"),
  accountDetails("Account Details"),
  earnings("Earnings"),
  refundStatus("Refund Status"),
  canceledBy("Canceled by"),
  notAvailable("Not Available"),
  noServices("No Services"),
  noReferences("No References"),
  timeChange("Time Change"),
  serviceScheduled("Service Scheduled "),
  about("About"),
  hobbies("Hobbies"),
  whyYouLoveBeingCareAmbassador("Why you love being care ambassador"),
  availableInDifferentLocation("Available in Different Location"),
  noInternetConnection("No internet connection"),
  noInternetConnectionSubtitle(
      "Try to check the network cables, modem, and router or reconnect to Wi-Fi"),
  somethingWentWrong("Something went wrong on our end."),
  weAreWorkingToFix("We're working to fix it, Please try again later."),
  relationship("Relationship"),
  addressLine1("Address Line 1"),
  street("Street"),
  city("City"),
  state("State"),
  zip("Zip"),
  documentDetails("Document Details"),
  certificateVerification("Certificate Verification"),
  documentUploaded("Document Uploaded"),
  documentNumber("Document Number"),
  hhaDocument("HHA Document"),
  docNumber("Document Number"),
  expiryDate("Expiry Date"),
  bLSCPRAndFirstAidCertification("BLS CPR/First Aid Certification"),
  tBAndPPDTest("TB/PPD Test"),
  dob("Date of Birth"),
  gender("Gender"),
  alternativeMobileNumber("Alternative Mobile Number"),
  covid19Vaccination("COVID - 19 Vaccination"),
  takenDate("Taken Date"),
  result("Result"),
  howManyExperience("How many years of experience do you have?"),
  serveClientsWithPets("Are you willing to serve clients with pets?"),
  languagesKnown("Languages known"),
  chooseLanguages("Choose languages"),
  searchLanguages("Search languages"),
  done("Done"),
  serveHomeWithSmoker("Are you able to serve a home with a smoker?"),
  haveAnAppointment("Have an appointment"),
  viewDetails("View Details"),
  view("View"),
  viewProfile("View Profile"),
  edit("Edit"),
  delete("Delete"),
  provideTransportationOrRunErrands(
      "Are you willing to provide transportation or run errands in your vehicle"),
  createNew("Create New"),
  basicDetails("Basic Details"),
  dateOfBirth("Date of Birth"),
  ddmmyyyy("dd/mm/yyyy"),
  mmDDYYY("MM/dd/yyyy"),
  mmDDYYYTimeZone("MM/dd/yyyy  'at' hh:mm a"),
  personalDetails("Personal Details"),
  qualificationAndTestResult("Qualifications & Test Result"),
  uploadYourProfilePhoto("Upload Your Profile Photo"),
  address("Address"),
  addressLine("Address Line1"),
  socialSecurityNumber("Social Security Number"),
  documentInfoMsg(
      "Document info: This information is collected for security purpose"),
  selectDocumentType("Select Document Type  to Upload"),
  documentNo("Document Number"),
  date("Date"),
  selectCity("Select City"),
  selectState("Select State"),
  searchCity("Search City"),
  searchState("Search State"),
  back("Back"),
  verificationProcess("Verification Process"),
  backGroundVerification("Background Verification"),
  lessThanAYear("Less than 1 year"),
  oneToTwoYear("1 - 2 year"),
  twoToFiveYear("2 - 5 year"),
  fiveAndMore("5 and more"),
  doYouHaveHHAReg("Do you have HHA registration?"),
  enterHHANumber("Enter HHA Number"),
  doYouHaveBLSCertification("Do you have BLS CPR/First Aid Certification?"),
  enterCertificationNumber("Enter Certification Number"),
  TBPPDTest("TB/PPD Test"),
  clickHereToRegister("Click here to register"),
  pleaseVisitDoctorProvideTBTest(
      "Please visit your doctor that provide TB testing"),
  knownLanguages("Select your known languages"),
  ifOthersPlzSpecify("If others, please specify"),
  backgroundCheckStatus("Background Check Status"),
  certificateCheckStatus("Certificate Check Status"),
  approve("Approve"),
  approved("Approved"),
  rejected("Rejected"),
  reject("Reject"),
  startVerification("Start Verification"),
  startedVerification("Started Verification"),
  trainingStarted("Training Started"),
  interviewStarted("Interview Started"),
  interviewCompleted("Interview Completed"),
  interviewFailed("Interview Failed"),
  backgroundRejected("Background Verification Rejected"),
  certificateRejected("Certificate Verification Rejected"),
  enterTheReason("Enter the reason"),
  acceptThisCareAmbassador("Do you want to accept this care ambassador?"),
  selectRejectedDocument("Select rejected document and mentioned the reason"),
  profilePicture("ProfilePictures"),
  documents("Documents"),
  matchingList("Matching List"),

  ///paths
  careAmbassadorVerificationPath("care-ambassador-verification"),
  careAmbassadorCreationPath("care-ambassador-creation"),
  careAmbassadorProfilePath("care-ambassador-profile"),
  careAmbassadorDetailPath("care-ambassador-detail"),

  ///validations
  emptyEmail("Email address shouldn't be empty"),
  emptyReason("Reason shouldn't be empty"),
  validEmail("Enter valid email address"),
  emptyPassword("Password shouldn't be empty"),
  emptyRejectedDocument(
      "Please Select rejected document and mention the reason"),
  passwordLengthError("Password should be at least 8 characters"),
  emptyConfirmPassword("Confirm password shouldn't be empty"),
  notMatchConfirmPassword("Confirm password doesn't match"),
  emptyName("Name shouldn't be empty"),
  emptyRoutingNo("Routing number shouldn't be empty"),
  emptyAcNo("Account number shouldn't be empty"),
  emptyFName("First name shouldn't be empty"),
  emptyLName("Last name shouldn't be empty"),
  emptyPhone("Phone number shouldn't be empty"),
  emptyAbout("Please write something about you"),
  emptyHobbies("Please write something about your hobbies"),
  emptyLoveCaregiver("Please write the reason"),
  emptyMobile("Mobile number shouldn't be empty"),
  validMobile("Mobile number should be 10 digits"),
  uploadDocument("Upload the document"),
  emptyDOB("Date of birth shouldn't be empty"),
  emptyStartTime("Start time shouldn't be empty"),
  emptyEndTime("End time shouldn't be empty"),
  emptyExpiry("Expiry date shouldn't be empty"),
  emptyDate("Date shouldn't be empty"),
  emptyGender("Please select your gender"),
  emptyStreet("Please enter your street name"),
  emptyState("Please select your state"),
  emptyCity("Please select your city"),
  emptyRelationship("Please select your relationship"),
  emptyZip("Please enter zip code"),
  invalidZip("Please enter valid zip code"),
  emptySSN("Please enter social security number"),
  invalidSSN("Please enter valid social security number"),
  emptyDocType("Please select the document type"),
  emptyDocNo("Please enter the document number"),
  emptyAddress("Please enter your address"),
  emptyHHANo("Please enter HHA number"),
  emptyBLSNo("Please enter BLS certification number"),
  emptyTBNo("Please enter TB result number"),
  emptyRole("Role name shouldn't be empty"),
  emptyModule("You Should Select at least one module"),
  emptyProfilePic("Please select your profile picture"),
  errorUploadingFile("Error uploading file, Please try again"),
  serviceRequestManagement("Service Request Management"),
  pendingServices("Pending Services"),
  completedServices("Completed Services"),
  cancelledRequest("Cancelled Request"),
  upcomingRequest("Upcoming Request"),
  onGoingRequest("Ongoing Request"),
  decisionMakerIdAndName("Decision maker ID & Name"),
  clientIdAndName("Client ID & Name"),
  startDateAndTime("Start Date & Start Time"),
  endDateAndTime("End Date & End Time"),
  noOfMatchingIsShown("No of Matching list shown"),
  cancelledBy("Cancelled By"),
  extraFee("Extra Fee"),
  tip("Tip"),
  proceed("Proceed"),
  enterYourNewDateAndTime("Enter Your New Date & Time"),
  normalServiceRequest("Normal Service Booking"),
  rebooking("Rebooking"),
  refund("Refund"),
  congrats("Congrats!"),
  caregiverAvailable(
      "Your selected caregiver is available for the service . You can accept & Enjoy the service"),
  caregiverNotAvailable(
      "Sorry!\nSelected care ambassador is not available on\n that particular day .\nDo you want to proceed this service with\n other care ambassador?"),

  youShouldSelectStartTime("You should start from time"),
  rescheduleWaiting(
      "Please hold on for a moment as we are\nchecking if the caregiver is available for the\ndate you have chosen"),
  cancelThisServiceRequest("Cancel This Service Request"),
  rescheduleThisServiceRequest("Reschedule This Service Request"),
  agreementChckboxText(
      "I have read and agree to the home health aid agreement"),
  dummyAgreementText(
      "Gives the care ambassador the right to make healthcare decisions on someone else’s behalf. This is common if the patient is not able to speak for themselves and a care ambassador is assigned the duty of making decisions for the benefit of the patient. This form also includes a living will that allows the patient to make end-of-life decisions if they should be in a state of incapacitation for a longer period of time.");

  final String val;

  const AppString(this.val);
}

/// App Colors
enum AppColor {
  backgroundColor(Color(0xffE9F0F9)),
  primaryColor(Color(0xff344280)),
  blue2(Color(0xff193DF2)),
  darkBlue(Color(0xff070329)),
  lightBlue1(Color(0xffDAD8EE)),
  lightBlue2(Color(0xffF6F9FF)),
  lightBlue3(Color(0xffF0F3FF)),
  black(Color(0xff000000)),
  black2(Color(0xff020E1A)),
  black3(Color(0xff1A1C25)),
  black4(Color(0xff444444)),
  black5(Color(0xff494949)),
  black6(Color(0x15000000)),
  matBlack(Color(0xff324665)),
  matBlack2(Color(0xff596483)),
  matBlack3(Color(0xff1F374F)),
  matBlack4(Color(0xff2A3549)),
  matBlack5(Color(0xff425970)),
  white(Color(0xffFFFFFF)),
  offWhite(Color(0xffE4E8E5)),
  subTitleColor(Color(0xff727E8A)),
  label(Color(0xff727E8A)),
  label2(Color(0xff626977)),
  label3(Color(0xff535A69)),
  label4(Color(0xff596277)),
  label5(Color(0xff474F5F)),
  label6(Color(0xff646F83)),
  label7(Color(0xff323844)),
  label8(Color(0xff535E6B)),
  menuDisable(Color(0xff0D0D0E)),
  borderColor(Color(0xffBAC0D2)),
  rowBackgroundColor(Color(0xffF3F6F9)),
  columColor(Color(0xff989DB7)),
  columColor2(Color(0xff8D94B4)),
  rowColor(Color(0xff464E5F)),
  dividerColor(Color(0xffEDF0FC)),
  dividerColor2(Color(0xffDFE8F1)),
  dividerColor3(Color(0xffE2E5ED)),
  dividerColor4(Color(0xffE3E9F0)),
  calendarColor(Color(0xffF9FBFF)),
  darkGreen(Color(0xff479C88)),
  darkGreen2(Color(0xff075948)),
  green(Color(0xff42C25F)),
  green2(Color(0xff50CD89)),
  green3(Color(0xffC9F7D3)),
  amberAccentLight(Color(0xffFFF0BF)),
  amber(Color(0xffCFA92B)),
  amber2(Color(0xffE7B75A)),
  amber3(Color(0xffEB9C02)),
  amber4(Color(0xffFDF1CA)),
  indoor(Color(0xffFCEFCF)),
  outdoor(Color(0xffF6DADA)),
  both(Color(0xffC6DEF4)),
  lightGrey(Color(0xffE1E8F0)),
  inactive(Color(0xffB3BDC8)),
  lightGrey2(Color(0xff8793AB)),
  lightGrey3(Color(0xff8E94A1)),
  lightGrey4(Color(0xffB5B5C4)),
  lightGrey5(Color(0xffA0A4B7)),
  lightGrey6(Color(0xffA7AAA8)),
  lightGrey7(Color(0xff7E889D)),
  lightGrey8(Color(0xFFdee2e6)),
  lightGrey9(Color(0xffF9F9F9)),
  lightGrey10(Color(0xff838181)),
  lightGrey11(Color(0xff9297B2)),
  darkGrey(Color(0xff576A83)),
  darkGrey2(Color(0xff496379)),
  darkGrey3(Color(0xff5B6D84)),
  darkGrey4(Color(0xff52687B)),
  lightWhite(Color(0xffEEF4FA)),
  notAvailable(Color(0xff7C7676)),
  timeInChange(Color(0xffAE92FE)),
  availableInDifferent(Color(0xffF3AA1A)),
  red(Color(0xffE75A77)),
  red1(Color(0x4d3A0202)),
  blue1(Color(0x4d02263a)),
  red2(Color.fromRGBO(253, 66, 66, 0.8)),
  red3(Color(0xffFDEDEE)),
  red4(Color(0xffFDEDEE)),
  red5(Color(0xffFF2727)),
  blue(Color(0xff556DD3)),
  success(Color(0xff53a653)),
  warning(Color(0xffffcc00)),
  error(Color(0xffe10725)),
  info(Color(0xff4fc3f7)),
  successDark(Color(0xff408140)),
  warningDark(Color(0xffffb800)),
  errorDark(Color(0xffc7051b)),
  infoDark(Color(0xff03a9f4)),
  skyBlueShade(Color(0xff29AECC)),
  dark(Color(0xff141414)),
  lightRed(Color(0xfffceff1)),
  mediumRed(Color(0xfff06f81)),
  starFillColor(Color(0xffEB9C02)),
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
  tick("assets/icons/ic_tick.svg"),
  notFound("assets/icons/ic_not_found.svg"),
  calender("assets/icons/calender.svg"),
  cameraIcon("assets/icons/camera_icon.svg"),
  userAvatar("assets/icons/user_avatar.svg"),
  addressSelectionIcon("assets/icons/address_section_icon.svg"),
  iconClose("assets/icons/close.svg"),
  iconSearch("assets/icons/search_icon.svg"),
  iconUpload("assets/icons/uploadIcon.svg"),
  exclamation("assets/icons/exclamation.svg"),
  file("assets/icons/ic_file.svg"),
  roundClose("assets/icons/round_close.svg"),
  roundAdd("assets/icons/plus-circle.svg"),
  imageNotFound("assets/icons/image_not_found.png"),
  ssn("assets/icons/ic_ssn.svg"),
  warning("assets/icons/ic_warning.svg"),
  completed("assets/icons/ic_completed.svg"),
  drawerPng("assets/images/drawer.png"),
  unCheckBox("assets/icons/ic_uncheck.svg"),
  checkBox("assets/icons/ic_check.svg"),
  clock("assets/icons/ic_clock.svg"),
  calenderOutLine("assets/icons/ic_calendar.svg"),
  notAvailableCaregivers("assets/icons/ic_not_available_caregivers.svg"),
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
  font05(05.0),
  font06(06.0),
  font065(06.5),
  font07(07.0),
  font08(08.0),
  font10(10.0),
  font11(11.0),
  font12(12.0),
  font13(13.0),
  font13PointFive(13.7),
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
  pointTwoFive(.25),
  pointThree(.3),
  pointFive(.5),
  zero(0.0),
  one(1.0),
  onePointNine(1.9),
  two(2.0),
  three(3.0),
  threePointSeven(3.7),
  four(4.0),
  fourPointFive(4.5),
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
  thirtyEight(38.0),
  forty(40.0),
  fortyTwo(42.0),
  fortyThree(43.0),
  fortyFive(45.0),
  fortyEight(48.0),
  fifty(50.0),
  fiftyTwo(52.0),
  fiftyFive(55.0),
  sixty(60.0),
  sixtyFive(65.0),
  sixtyEight(68.0),
  seventy(70.0),
  seventyTwo(72.0),
  seventyFive(75.0),
  eighty(80.0),
  eightyFive(85.0),
  eightyNine(89.0),
  ninetyTwo(92.0),
  ninetyFive(95.0),
  hundred(100.0),
  oneHundredFour(104.0),
  oneHundredEight(108.0),
  oneTwenty(120.0),
  oneTwentyFive(125.0),
  oneThirty(130.0),
  oneThirtyEight(138.0),
  oneForty(140.0),
  oneFifty(150.0),
  oneFiftyEight(158.0),
  oneSixty(160.0),
  oneSixtySix(166.0),
  oneSeventy(170.0),
  oneSeventyFive(175.0),
  oneSeventySix(176.0),
  oneSeventyNine(179.0),
  oneEighty(180.0),
  oneNinety(190.0),
  twoHundred(200.0),
  twoThirty(230.0),
  twoForty(240),
  twoFortyFive(245),
  twoFiftyFive(255),
  twoSixty(260),
  twoSeventy(270),
  twoEighty(280),
  twoNinety(290),
  threeHundred(300.0),
  threeFifteen(315.0),
  threeTwenty(320.0),
  threeTwentyFive(325.0),
  threeThirty(330.0),
  threeFortyThree(343.0),
  threeFifty(350.0),
  threeSixtyFive(365.0),
  threeSeventeen(370.0),
  threeSeventyFive(375.0),
  threeEighty(380.0),
  threeNinetyTwo(392.0),
  fourHundred(400.0),
  fourTen(410.0),
  fourSeventy(470.0),
  fourFifty(450.0),
  fourEighty(480.0),
  fiveFifty(550.0),
  fiveTwenty(520.0),
  sevenFifty(750.0),
  eightSixtyFive(865.0),
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
  hundred(100),
  MAX_FILE_SIZE(20000000);

  final int val;

  const INT(this.val);
}

enum ButtonType { secondary, warning, info, success, error }

enum Status {
  pending(0),
  completed(1),
  canceled(2),
  ongoing(3),
  upcoming(4),
  start(5),
  acceptReject(6);

  final int val;

  const Status(this.val);
}

enum Week {
  monday(1),
  tuesday(2),
  wednesday(3),
  thursday(4),
  friday(5),
  saturday(6),
  sunday(7);

  final int val;

  const Week(this.val);
}

enum Day {
  mon("Monday"),
  tue("Tuesday"),
  wed("Wednesday"),
  thur("Thursday"),
  fri("Friday"),
  sat("Saturday"),
  sun("Sunday");

  final String val;

  const Day(this.val);
}

enum InOut {
  indoor(1),
  outdoor(2);

  final int val;

  const InOut(this.val);
}

//1=start verification 2=started verification 3=Training verification
// started 4=interview started 5=interview completed(verified)
// 7=background verification rejected 8=certificate rejected
enum Verification {
  startVerification(1),
  startedVerification(2),
  trainingStarted(3),
  interViewStarted(4),
  interViewCompleted(5),
  interViewFailed(6),
  backgroundVerificationRejected(7),
  certificateVerificationRejected(8);

  final int val;

  const Verification(this.val);
}

enum Approve {
  approveOrReject(0),
  approved(1),
  rejected(2);

  final int val;

  const Approve(this.val);
}

enum ToastPosition { top, bottom, topLeft, topRight, bottomLeft, bottomRight }

enum SnackBarState { error, success, info, warning }