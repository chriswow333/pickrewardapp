
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/repo/pay/model/pay.dart';
import 'package:pickrewardapp/shared/config/logger.dart';
import 'package:pickrewardapp/repo/pay/v1/pay.dart';
import 'package:pickrewardapp/repo/pay/v1/proto/generated/pay.pb.dart';



class PayItemViewModel with ChangeNotifier {

  PayItemViewModel() {
    PayRepo().init();
  }

  final List<PayItemModel> _payItemModels = [];

  List<PayItemModel> get pays => _payItemModels;

  Future<void> fetchPays() async {
    
    if(_payItemModels.isNotEmpty)return;

    try{
      
      EmptyReq allPaysReq = EmptyReq();

      PaysReply paysReply = await PayRepo().payClient.getAllPays(allPaysReq);
      for (PaysReply_Pay pay in paysReply.pays){
        
        _payItemModels.add(
          PayItemModel(
            id:pay.id,
            name: pay.name,
            createDate: pay.createDate.toInt(),
            updateDate: pay.updateDate.toInt(),
            order:pay.order,
            payStatus: pay.payStatus,
          )
        );
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


