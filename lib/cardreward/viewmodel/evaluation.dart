

import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:pickrewardapp/cardreward/repository/evaluation/evaluation.dart';
import 'package:pickrewardapp/cardreward/repository/evaluation/proto/generated/evaluation.pb.dart';



class EvaluationViewModel with ChangeNotifier{

    
  EvaluationRespProto? _resp;
  
  EvaluationRespProto? get() => _resp;

  EvaluationViewModel(String rewardID) {
    EvaluationService().init();
    _fetchEvaluationResp(rewardID);
  }
 

  Future<void> _fetchEvaluationResp(String rewardID) async {
    
    try {
      
      EvaluationIDProto evaluationIDProto = EvaluationIDProto();
      evaluationIDProto.id = rewardID;
      EvaluationRespReply reply = await EvaluationService().evaluationClient.getEvaluationRespByOwnerID(evaluationIDProto);
      
      EvaluationRespProto respProto = reply.evaluationResp;
      _resp = respProto;
      
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