import 'package:flutter/material.dart';
import 'package:repeat_http/data/api_service/api_service.dart';
import 'package:repeat_http/data/repository/bank_repo.dart';
import 'package:repeat_http/screen/home_page.dart';
import 'package:repeat_http/view_model/bank_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(bankViewModel: BankViewModel(bankRepo: BankRepo(apiService: ApiService())),),
    );
  }
}

