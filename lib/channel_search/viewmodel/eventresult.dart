


import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/channel_search/viewmodel/criteria.selected.dart';
import 'package:pickrewardapp/shared/repository/card/v1/card.dart';
import 'package:pickrewardapp/shared/repository/card/v1/proto/generated/card.pb.dart';

class CardRewardEventResultsViewModel with ChangeNotifier {

  CardRewardEventResultsViewModel(){
    CardService().init();
  }


final List<EvaluateCardRewardsReply_CardRewardEventResult> _cardRewardEventResults = [];

  List<EvaluateCardRewardsReply_CardRewardEventResult> get cardRewardEventResults => _cardRewardEventResults;

  Future<void> evaluateCardRewardsEventResult(CriteriaViewModel criteriaViewModel)async{
    
    List<int> channelLabels = criteriaViewModel.channelLabels.map((e) => e.label).toList();

    List<String> channelIDs = criteriaViewModel.getChannelIDs();

    int rewardType = criteriaViewModel.rewardType.type;
    int cost = criteriaViewModel.cost;
    DateTime eventDate = criteriaViewModel.date;

    EventReq cardEventReq = EventReq();
    // cardEventReq.labels.addAll(labelIDs);
    // cardEventReq.channelIDs.addAll(channelIDs);
    // cardEventReq.payIDs.addAll(payIDs);
    // cardEventReq.cost = cost;
    // cardEventReq.eventDate = Int64.parseInt((eventDate.millisecondsSinceEpoch / 1000).toInt().toString());
    // cardEventReq.rewardType = rewardType;

    try {

      EvaluateCardRewardsReply evaluateCardRewardsReply = await CardService().cardClient.evaluateCards(cardEventReq);

      _cardRewardEventResults.clear();
      _cardRewardEventResults.addAll(evaluateCardRewardsReply.cardRewardEventResults);
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