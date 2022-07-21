import 'package:carebea/app/modules/home/data/home_data_source.dart';
import 'package:carebea/app/modules/home/data/models/home_data_model.dart';

class HomeDataRepository {
  final HomeDataSource _dataSource = HomeDataSource();

  Future<HomeData> getHomePageData({required int userId}) => _dataSource.getHomePageData(userId);
}
