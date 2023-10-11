

import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:pickrewardapp/cardreward/model/card_reward.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/shared/repository/evaluation/evaluation.dart';
import 'package:pickrewardapp/shared/repository/evaluation/proto/generated/evaluation.pb.dart';



class EvaluationViewModel with ChangeNotifier{

  EvaluationViewModel() {
    EvaluationService().init();
  }

  bool _selectedEvaluationItem = false;
  CardRewardModel? _cardRewardModel; 

  Future<void> setCardReward(CardRewardModel cardRewardModel) async{
    _selectedEvaluationItem = true;
    _cardRewardModel = cardRewardModel;
    await fetchEvaluationResp(cardRewardModel.id);
  }

  backToCardRewardItems(){
    _selectedEvaluationItem = false;
    notifyListeners();
  }


  get selectedEvaluationItem => _selectedEvaluationItem;

  get cardRewardModel => _cardRewardModel;
  
  EvaluationResp? _resp;
  
  EvaluationResp? get evaluationResp => _resp;


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