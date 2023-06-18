

import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/reward/repository/card/card.dart';
import 'package:pickrewardapp/reward/repository/card/proto/generated/card.pb.dart';


class BankViewModel with ChangeNotifier{

  BankViewModel(){
    CardService().init();
    _fetchBanks(); 
  }
 
  final List<BankModel> _bankModels = [];

  get banks => _bankModels;

  Future<void> _fetchBanks() async{ 
    
    if (_bankModels.isNotEmpty) return;

    try {
      BanksProtoReply bankReply = await CardService().cardClient.getAllBanks(EmptyRequest());
      for (final b in bankReply.banks){
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