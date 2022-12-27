import 'package:flutter/material.dart';
import 'package:repeat_http/data/model/bank_model.dart';
import 'package:repeat_http/data/repository/bank_repo.dart';

class BankViewModel {
  BankRepo bankRepo;
  
  BankViewModel({required this.bankRepo});

  List<BankModel>? bank;

  fetchBank() async {
  bank = await bankRepo.getBank();
  }
  
}