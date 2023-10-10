import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';


import 'package:pickrewardapp/shared/repository/card/card.dart';
import 'package:pickrewardapp/shared/repository/card/proto/generated/card.pb.dart';


class BankViewModel with ChangeNotifier{

  BankViewModel(){
    CardService().init();
    _fetchBanks(); 
  }
 
  final List<BankModel> _bankModels = [];

  get banks => _bankModels;


  static int initLimit = 1000;
  static int initOffset = 0;

  Future<void> _fetchBanks() async{ 
    
    if (_bankModels.isNotEmpty) return;

    try {
      
      AllBanksReq allBanksReq = AllBanksReq();
      allBanksReq.limit = initLimit;
      allBanksReq.offset = initOffset;

      BanksReply banksReply = await CardService().cardClient.getAllBanks(allBanksReq);
      for (final b in banksReply.banks){
        _bankModels.add(BankModel(b.name, b.id, b.image));
      }
      
      notifyListeners();

    } on GrpcError catch (e) {
      ///handle all grpc errors here
      ///errors such us UNIMPLEMENTED,UNIMPLEMENTED etc...
      print(e);
    } catch (e) {
      ///handle all generic errors here
      print(e);
    }
  }

}


class BankModel {
  BankModel(this.name, this.id, this.image,);
  final String name;
  final String id;
  final String image;
}