import 'package:carebea/app/modules/Route_page/data/model/route_page_response.dart';
import 'package:carebea/app/modules/Route_page/data/route_page_data_source.dart';

class RoutePageRepository {
  final RoutePageDataSource _dataSource = RoutePageDataSource();

  Future<RouteByDateResponse> fetchRouteByDate({required int userId,required String date}) => _dataSource.fetchRouteByDate(userId, date);
}
