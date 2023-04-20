// ignore_for_file: prefer_const_constructors


import 'package:admin_580_tech/core/string.dart';
import 'package:admin_580_tech/presenation/caregiver_list/caregiver_page.dart';
import 'package:admin_580_tech/presenation/carousel/carousel_page.dart';
import 'package:admin_580_tech/presenation/chart/chart_page.dart';
import 'package:admin_580_tech/presenation/dashboard/dash_board_page.dart';
import 'package:admin_580_tech/presenation/date_picker/date_picker_view.dart';
import 'package:admin_580_tech/presenation/drop_down_view/drop_down_view.dart';
import 'package:admin_580_tech/presenation/drop_files/drop_file_page.dart';
import 'package:admin_580_tech/presenation/google_map/google_map_page.dart';
import 'package:admin_580_tech/presenation/invoice/invoice_page.dart';
import 'package:admin_580_tech/presenation/payment_success/payment_success_page.dart';
import 'package:admin_580_tech/presenation/profile/profile_page.dart';
import 'package:admin_580_tech/presenation/user_drag/user_drag_page.dart';
import 'package:admin_580_tech/presenation/user_form/user_form_page.dart';
import 'package:admin_580_tech/presenation/user_table/user_table_page.dart';
import 'package:flutter/material.dart';

int getRouteIndex(String route) {
  if (route == Strings.calendar) {
    return 1;
  }  else if (route == Strings.dataTable) {
    return 2;
  } else if (route == Strings.invoice) {
    return 3;
  } else if (route == Strings.carousel) {
    return 4;
  } else if (route == Strings.tabs) {
    return 5;
  }   else if (route == Strings.formValidation) {
    return 6;
  } else if (route == Strings.formFileUpload) {
    return 7;
  } else if (route == Strings.map) {
    return 8;
  } else if (route == Strings.userProfile) {
    return 9;
  } else if (route == Strings.dragDrop) {
    return 10;
  } else if (route == Strings.datePicker) {
    return 11;
  }  else if (route == '${Strings.payment}/success') {
    return 12;
  } else if (route == Strings.dropDown) {
    return 13;
  } else if (route == Strings.caregivers) {
    return 14;
  }
  else {
    return 0;
  }
}

Widget getRouteWidget(int index) {
  print('called here.....getRouteWidget $index');
  if (index == 1) {
    return  UserTable();
  } else if (index == 2) {
    return  UserTable();
  } else if (index == 3) {
    return  InvoicePage();
  } else if (index == 4) {
    return CarouselPage();
  } else if (index == 5) {
    return UserFormPage();
  } else if (index == 6) {
    return DropFilePage();
  } else if (index == 7) {
    return GoogleMapsPage();
  } else if (index == 8) {
    return ProfilePage();
  } else if (index == 9) {
    return UserDragDropPage();
  } else if (index == 10) {
    return DatePickerView();
  } else if (index == 11) {
    return PaymentSuccessPage();
  } else if (index == 12) {
    return DropDownView();
  }
  // else if (index == 14) {
  //   return CareGiverListPage();
  // }
  else {
    print('called here.............');
    // return DashboardPage();
    return CareGiverListPage();
  }
}

