
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/shared/bank/model/bank.dart';
import 'package:pickrewardapp/shared/bank/repo/v1/bank.dart';
import 'package:pickrewardapp/shared/bank/repo/v1/proto/generated/bank.pb.dart';
import 'package:pickrewardapp/shared/config/logger.dart';



class BankViewModel with ChangeNotifier{

  BankViewModel(){
    BankService().init();
    _fetchBanks(); 
  }
 
  final List<BankModel> _bankModels = [];

  List<BankModel >get banks => _bankModels;

  Future<void> _fetchBanks() async{ 
    
    if (_bankModels.isNotEmpty) return;

    try {
      
      AllBanksReq allBanksReq = AllBanksReq();

      BanksReply banksReply = await BankService().bankClient.getAllBanks(allBanksReq);
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


