import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:repeat_http/view_model/bank_view_model.dart';

class HomePage extends StatefulWidget {
  BankViewModel bankViewModel;
  HomePage({super.key,required this.bankViewModel});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var bankModel = widget.bankViewModel.bank;
    var bankModelTwo = widget.bankViewModel;
    return Scaffold(
      appBar: AppBar(
        title: Text('http package'),
      ),
      body: Container(
        child: Column(
          children: [
            bankModel == null?
            ElevatedButton(onPressed: (){
              setState(() {
                bankModelTwo.fetchBank();
              });
              
            }, child: Text('Buttom')):
            Center(child: Text(bankModel[1].title)),
          ],
        ),
      ),

    );
  }
}