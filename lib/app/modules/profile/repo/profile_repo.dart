import 'package:carebea/app/modules/profile/data/profile_data_source.dart';
import 'package:carebea/app/modules/profile/models/profile_model.dart';
import 'package:carebea/app/modules/shops/data/order_list_datasource.dart';
import 'package:carebea/app/modules/shops/data/shop_list_datasource.dart';
import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:flutter/cupertino.dart';






class ProfileViewRepo{
  ProfileDataSource profileDataSource = ProfileDataSource();

  Future<ProfileResponse> viewProfile({required int userId}) async {
    return profileDataSource.viewProfile(userId);
  }





}