


import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/reward/repository/pay/pay.dart';
import 'package:pickrewardapp/reward/repository/pay/proto/generated/pay.pb.dart';

class PayItemViewModel with ChangeNotifier {

    
  PayItemViewModel() {
    PayService().init();
  }

  final List<PayItemModel> _payItemModels = [];

  List<PayItemModel> get pays => _payItemModels;

  Future<void> fetchPays() async {
    
    if(_payItemModels.isNotEmpty)return;

    try{

      PayProtoReply payProtoReply = await PayService().payClient.getAllPays(EmptyRequest());
      for (PayProto payProto in payProtoReply.payProto){
        
        _payItemModels.add(
          PayItemModel(
            id:payProto.id,
            name: payProto.name,
            image: payProto.image,
            order:payProto.order
          )
        );
      }
    } on GrpcError catch (e) {
      ///handle all grpc errors here
      ///errors such us UNIMPLEMENTED,UNIMPLEMENTED etc...
      print(e);
    } catch (e) {
      ///handle all generic errors here
      print(e);
    }

    notifyListeners();
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
    // required this.linkURL,
    // required this.descriptions,
    // required this.createDate, 
    // required this.updateDate, 
    required this.order, 
    // required this.payStatus
}):linkURL="", descriptions= [], createDate = 0, updateDate = 0, payStatus = 0;


  
}