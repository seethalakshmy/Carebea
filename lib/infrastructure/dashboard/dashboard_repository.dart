import '../../domain/core/api_client.dart';
import '../../domain/dashboard/model/i_dashboard_repo.dart';

class DashboardRepository implements IDashboardRepo {
  ApiClient apiClient = ApiClient();
}
