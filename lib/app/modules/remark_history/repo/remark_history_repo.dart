import 'package:carebea/app/modules/remark_history/models/remark_history_response.dart';

import '../data/remark_history_datasource.dart';

class RemarkHistoryRepo {
  RemarkHistoryDataSource remarkHistoryDataSource = RemarkHistoryDataSource();

  Future<RemarkHistoryResponse> remarkHistory(
      {required int shopId,
      required int limit,
      required int pageNumber}) async {
    return remarkHistoryDataSource.remarkHistory(
        shopId: shopId, limit: limit, pageNumber: pageNumber);
  }
}
