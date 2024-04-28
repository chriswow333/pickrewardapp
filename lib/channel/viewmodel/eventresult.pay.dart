
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/channel/model/pay.dart';
import 'package:pickrewardapp/shared/config/logger.dart';
import 'package:pickrewardapp/shared/pay/repo/v1/pay.dart';
import 'package:pickrewardapp/shared/pay/repo/v1/proto/generated/pay.pb.dart';



class EventResultPayViewModel with ChangeNotifier {

  EventResultPayViewModel() {
    PayService().init();
  }

  Future<List<PaysReply_Pay>?> fetchPays(List<String> ids) async {
    try{
      PayIDsReq payIDsReq = PayIDsReq();
      payIDsReq.payIDs.addAll(ids);
      PaysReply paysReply = await PayService().payClient.getPaysByIDs(payIDsReq);
      return paysReply.pays;
    } on GrpcError catch (e) {
      logger.e(e);
    } catch (e) {
      logger.e(e);
    }
    return null;
  }

}

class PayItemViewModel with ChangeNotifier {

  static int initOffset = 0;
  static int initLimit = 100;


  PayItemViewModel() {
    PayService().init();
  }

  final List<PayItemModel> _payItemModels = [];

  List<PayItemModel> get pays => _payItemModels;

  Future<void> fetchPays() async {
    
    if(_payItemModels.isNotEmpty)return;

    try{
      
      AllPaysReq allPaysReq = AllPaysReq();
      allPaysReq.limit = initLimit;
      allPaysReq.offset = initOffset;

      PaysReply paysReply = await PayService().payClient.getAllPays(allPaysReq);
      for (PaysReply_Pay pay in paysReply.pays){
        
        _payItemModels.add(
          PayItemModel(
            id:pay.id,
            name: pay.name,
            image: pay.image,
            linkURL: pay.linkURL,
            descriptions: pay.descriptions,
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


