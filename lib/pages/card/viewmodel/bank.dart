
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/repo/bank/model/bank.dart';
import 'package:pickrewardapp/repo/bank/v1/bank.dart';
import 'package:pickrewardapp/repo/bank/v1/proto/generated/bank.pb.dart';
import 'package:pickrewardapp/shared/config/logger.dart';


class BankViewModel with ChangeNotifier{

  BankViewModel(){
    BankRepo().init();
    _fetchBanks(); 
  }
 
  final List<BankModel> _bankModels = [];
 
  List<BankModel >get banks => _bankModels;

  String getBankName(String bankID){
    for(BankModel bankModel in banks){
      if (bankModel.id == bankID){
        return bankModel.name;
      }
    }
    return "";
  }

  Future<void> _fetchBanks() async{ 
    
    if (_bankModels.isNotEmpty) return;

    try {
      
      AllBanksReq allBanksReq = AllBanksReq();

      BanksReply banksReply = await BankRepo().bankClient.getAllBanks(allBanksReq);
      for (final b in banksReply.banks){
        _bankModels.add(BankModel(b.name, b.id, b.order, b.bankStatus));
      }
      
      notifyListeners();

    } on GrpcError catch (e) {
      ///handle all grpc errors here
      ///errors such us UNIMPLEMENTED,UNIMPLEMENTED etc...
      logger.e(e);

    } catch (e) {
      ///handle all generic errors here
      logger.e(e);
    }
  }

}


