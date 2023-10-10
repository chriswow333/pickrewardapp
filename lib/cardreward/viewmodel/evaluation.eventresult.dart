



import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/shared/repository/evaluation/evaluation.dart';
import 'package:pickrewardapp/shared/repository/evaluation/proto/generated/evaluation.pb.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.selected.dart';

class EvaluationEventResultRespViewModel with ChangeNotifier {


  EvaluationEventResultRespReply_FeedbackEventResultResp? _feedbackEventResult;


  set evaluationEventResult (EvaluationEventResultRespReply_EvaluationEventResultResp evaluationEventResultResp) {
    _feedbackEventResult = evaluationEventResultResp.feedbackEventResultResp;
    notifyListeners();
  }

  EvaluationEventResultRespReply_FeedbackEventResultResp? get feedbackEventResult => _feedbackEventResult;



  Future<void> evaluateCardRewardEvaluation(EvaluationSelectedViewModel selectedViewModel) async {

    try {

      if(selectedViewModel.cardRewardModel == null){
        print('not found cardRewardModel when evaluationCardRewardEvaluation');
        return;
      } 


      EventReq eventReq = EventReq();

      eventReq.ownerID = selectedViewModel.cardRewardModel!.id;

      eventReq.cost = selectedViewModel.getCost();
      eventReq.channelIDs.addAll(selectedViewModel.getChannelIDs().toList());
      eventReq.labels.addAll(selectedViewModel.getLabels().toList());
      eventReq.payIDs.addAll(selectedViewModel.getPayIDs().toList());
      eventReq.taskIDs.addAll(selectedViewModel.getTaskIDs().toList());
      eventReq.rewardType = selectedViewModel.cardRewardModel!.reward.rewardType;

      DateTime eventDate = selectedViewModel.getCostDate();
      eventReq.eventDate = Int64.parseInt((eventDate.millisecondsSinceEpoch ~/ 1000).toString());

      EvaluationEventResultRespReply reply = await EvaluationService().evaluationClient.evaluateRespByOwnerID(eventReq);

      evaluationEventResult = reply.evaluationEventResultResp;

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
