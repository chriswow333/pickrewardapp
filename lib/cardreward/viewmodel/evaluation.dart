

import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:pickrewardapp/shared/repository/evaluation/evaluation.dart';
import 'package:pickrewardapp/shared/repository/evaluation/proto/generated/evaluation.pb.dart';



class EvaluationViewModel with ChangeNotifier{

    
  EvaluationResp? _resp;
  
  EvaluationResp? get evaluationResp => _resp;

  EvaluationViewModel() {
    EvaluationService().init();
  }

  Future<void> fetchEvaluationResp(String cardRewardID) async {
    try {
      
      OwnerIDReq ownerIDReq = OwnerIDReq();
      ownerIDReq.ownerID = cardRewardID;
      EvaluationRespReply evaluationRespReply = await EvaluationService().evaluationClient.getEvaluationRespByOwnerID(ownerIDReq);
      
      EvaluationResp evaluationResp = evaluationRespReply.evaluationResp;
      _resp = evaluationResp;
      
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