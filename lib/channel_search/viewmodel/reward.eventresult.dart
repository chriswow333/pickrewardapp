


import 'package:fixnum/fixnum.dart';

import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/shared/repository/card/card.dart';
import 'package:pickrewardapp/shared/repository/card/proto/generated/card.pb.dart';
import 'package:pickrewardapp/channel_search/viewmodel/reward.selected.dart';

class CardRewardEventResultsViewModel with ChangeNotifier {

  CardRewardEventResultsViewModel(){
    CardService().init();
  }


final List<EvaluateCardRewardsReply_CardRewardEventResult> _cardRewardEventResults = [];

  List<EvaluateCardRewardsReply_CardRewardEventResult> get cardRewardEventResults => _cardRewardEventResults;

  Future<void> evaluateCardRewardsEventResult(RewardSelectedViewModel rewardSelectedViewModel)async{
    
    List<int> labelIDs = rewardSelectedViewModel.getAllLabelIDs();

    List<String> channelIDs = rewardSelectedViewModel.getChannelIDs();
    List<String> payIDs = rewardSelectedViewModel.getPayIDs();
    int rewardType = rewardSelectedViewModel.rewardType;
    int cost = rewardSelectedViewModel.cost;
    DateTime eventDate = rewardSelectedViewModel.eventDate;

    CardEventReq cardEventReq = CardEventReq();
    cardEventReq.labels.addAll(labelIDs);
    cardEventReq.channelIDs.addAll(channelIDs);
    cardEventReq.payIDs.addAll(payIDs);
    cardEventReq.cost = cost;
    cardEventReq.eventDate = Int64.parseInt((eventDate.millisecondsSinceEpoch / 1000).toInt().toString());
    cardEventReq.rewardType = rewardType;

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