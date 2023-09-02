



import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/cardreward/repository/evaluation/evaluation.dart';
import 'package:pickrewardapp/cardreward/repository/evaluation/proto/generated/evaluation.pb.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.selected.dart';

class EvaluationEventResultRespViewModel with ChangeNotifier {


  FeedbackEventResultProto? _feedbackEventResult;

  set evaluationEventResult (EvaluationEventResultRespProto evaluationEventResultResp) {
    _feedbackEventResult = evaluationEventResultResp.feedbackEventResultResp;
    notifyListeners();
  }

  FeedbackEventResultProto get feedbackEventResult => _feedbackEventResult ?? FeedbackEventResultProto();




  Future<void> evaluateCardRewardEvaluation(EvaluationSelectedViewModel selectedViewModel) async {

    try {

      EventProto eventProto = EventProto();
      
      eventProto.ownerID = selectedViewModel.cardRewardModel.id;

      eventProto.channelIDs.addAll(selectedViewModel.getChannelIDs().toList());
      eventProto.cost = selectedViewModel.getCost();

      DateTime eventDate = selectedViewModel.getCostDate();
      eventProto.eventDate = Int64.parseInt((eventDate.millisecondsSinceEpoch / 1000).toInt().toString());
      eventProto.labels.addAll(selectedViewModel.getLabels().toList());
      eventProto.payIDs.addAll(selectedViewModel.getPayIDs().toList());
      eventProto.taskIDs.addAll(selectedViewModel.getTaskIDs().toList());
      eventProto.rewardType = selectedViewModel.cardRewardModel.reward.rewardType;

      EvaluationEventResultRespReply reply = await EvaluationService().evaluationClient.evaluateRespByOwnerID(eventProto);

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
