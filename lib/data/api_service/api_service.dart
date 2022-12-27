import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:repeat_http/data/model/bank_model.dart';

class ApiService{

 Future<List<BankModel>> getBank() async {
    String url = 'https://nbu.uz/uz/exchange-rates/json/';
    
    Response response = await http.get(Uri.parse(url));
    if(response.statusCode == 200) {
      return (jsonDecode(response.body) as List).map((e) => BankModel.fromjson(e)).toList();
    }
  return [];
 } 

}