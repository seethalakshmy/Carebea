import 'package:carebea/app/modules/create_order/data/create_order_data_source.dart';
import 'package:carebea/app/modules/shops/data/order_list_datasource.dart';
import 'package:carebea/app/modules/shops/data/shop_list_datasource.dart';
import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:flutter/cupertino.dart';

import '../../model/productlist_model.dart';

class ProductListRepo {
  CreateorderDataSource createorderDataSource = CreateorderDataSource();

  ///OrderListShopDeatilPage
  Future<ProductListResponse> productList({required int pageSize, required int pageNumber}) async {
    return createorderDataSource.productList(pageNumber: pageNumber,pageSize: pageSize);
  }

  Future<ProductListResponse> searchProductList(String query, {required int pageSize, required int pageNumber}) => createorderDataSource.searchProductList(query, pageNumber: pageNumber, pageSize: pageSize);
}
