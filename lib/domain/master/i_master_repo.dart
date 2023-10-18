import 'package:dartz/dartz.dart';

import '../core/api_error_handler/api_error_handler.dart';
import 'model/region_list_response.dart';

abstract class IMasterRepo {
  Future<Either<ApiErrorHandler, RegionListResponse>> getRegionList();
}
