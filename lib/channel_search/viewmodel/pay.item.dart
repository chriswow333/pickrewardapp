
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';


import 'package:pickrewardapp/shared/repository/pay/pay.dart';
import 'package:pickrewardapp/shared/repository/pay/proto/generated/pay.pb.dart';




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
      print(e);
    } catch (e) {
      ///handle all generic errors here
      print(e);
    }

  }
  


}



class PayItemModel {
  final String id;
  final String name;
  final String image;
  final String linkURL;
  final List<String> descriptions;
  final int createDate;
  final int updateDate;
  final int order;
  final int payStatus;

  PayItemModel({
    required this.id,
    required this.name, 
    required this.image, 
    required this.linkURL,
    required this.descriptions,
    required this.createDate, 
    required this.updateDate, 
    required this.order, 
    required this.payStatus
});


  
}