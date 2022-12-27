import 'package:repeat_http/data/api_service/api_service.dart';
import 'package:repeat_http/data/model/bank_model.dart';

class BankRepo {
  ApiService apiService;

  BankRepo({required this.apiService});

  Future<List<BankModel>> getBank() => apiService.getBank();
}