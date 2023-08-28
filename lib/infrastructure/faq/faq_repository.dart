import '../../domain/core/api_client.dart';
import '../../domain/dashboard/model/i_dashboard_repo.dart';
import '../../domain/faq/i_faq_repo.dart';

class FaqRepository implements IFaqRepo {
  ApiClient apiClient = ApiClient();
}
