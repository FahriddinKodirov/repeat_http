class BankModel{
  String title;
  String code;
  String cb_price;
  String nbu_buy_price;
  String nbu_cell_price;
  String date;

  BankModel({required this.cb_price,
             required this.code,
             required this.title,
             required this.nbu_buy_price,
             required this.date,
             required this.nbu_cell_price,
             });
  factory BankModel.fromjson(Map<String, dynamic> jsonData){
   return BankModel(cb_price: jsonData['cb_price'], 
                    code: jsonData['code'], 
                    title: jsonData['title'], 
                    nbu_buy_price: jsonData['nbu_buy_price'], 
                    date: jsonData['date'], 
                    nbu_cell_price: jsonData['nbu_cell_price']
                    );
  }
}