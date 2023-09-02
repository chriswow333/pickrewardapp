


import 'package:fixnum/fixnum.dart';

import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/card/repository/card/card.dart';
import 'package:pickrewardapp/card/repository/card/proto/generated/card.pb.dart';
import 'package:pickrewardapp/card/viewmodel/reward.selected.dart';

class CardRewardEventResultsViewModel with ChangeNotifier {

  CardRewardEventResultsViewModel(){
    CardService().init();
  }


final List<CardRewardEventResultProto> _cardRewardEventResults = [];

List<CardRewardEventResultProto> get() => _cardRewardEventResults;

Future<void> evaluateCardRewardsEventResult(RewardSelectedViewModel rewardSelectedViewModel)async{
    
  List<String> channelIDs = rewardSelectedViewModel.getChannelIDs();
  List<String> payIDs = rewardSelectedViewModel.getPayIDs();

  int rewardType = rewardSelectedViewModel.rewardType;
  
  int cost = rewardSelectedViewModel.cost;
  DateTime eventDate = rewardSelectedViewModel.eventDate;


  EventProto event = EventProto();

  event.channelIDs.addAll(channelIDs);
  event.payIDs.addAll(payIDs);
  event.cost = cost;
  event.eventDate = Int64.parseInt((eventDate.millisecondsSinceEpoch / 1000).toInt().toString());
  event.rewardType = rewardType;

  try {

    CardEventProto cardEvent = CardEventProto();
    cardEvent.event = event;

    print(event);
    EvaluateCardRewardsProtoReply reply = await CardService().cardClient.evaluateCards(cardEvent);
    print(reply.cardRewardEventResults);

    _cardRewardEventResults.clear();
    _cardRewardEventResults.addAll(reply.cardRewardEventResults);
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