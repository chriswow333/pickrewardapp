


import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/channel_search/model/channel.dart';
import 'package:pickrewardapp/channel_search/viewmodel/criteria.selected.dart';
import 'package:pickrewardapp/shared/repository/card/v1/card.dart';
import 'package:pickrewardapp/shared/repository/card/v1/proto/generated/card.pb.dart';

class CardEventResultsViewModel with ChangeNotifier {

  CardEventResultsViewModel(){
    CardService().init();
  }


  bool _loading = false;

  bool get loading => _loading;

  final List<EvaluateCardsReply_CardEventResultResp> _cardEventResults = [];

  List<EvaluateCardsReply_CardEventResultResp> get cardEventResults => _cardEventResults;

  Future<void> evaluateCardEventResult(CriteriaViewModel criteriaViewModel) async {
    
    _loading = true;
    
    await Future.delayed(const Duration(seconds: 1), () {});

    try { 

      EventReq eventReq = EventReq();
      eventReq.date = Int64(criteriaViewModel.date.millisecondsSinceEpoch ~/ 1000);
      eventReq.cost = criteriaViewModel.cost.value;

      final channelEvent = EventReq_ChannelEvent();

      channelEvent.channelLabels.addAll(criteriaViewModel.channelLabels.map((e) => e.label).toList());

      for(ChannelItemModel channelItemModel in  criteriaViewModel.channelItemModels) {
        final channelIDEvent = EventReq_ChannelIDEvent();
        channelIDEvent.channelID = channelItemModel.id;
        channelIDEvent.channelLabels.addAll(channelItemModel.labels);
        channelEvent.channelIDEvent.add(channelIDEvent);
      }
      eventReq.channelEvent = channelEvent;

      final cardEvent = EventReq_CardEvent();
      cardEvent.rewardType = criteriaViewModel.rewardType.type;
      cardEvent.taskLabels.addAll(criteriaViewModel.taskLabels.map((e) => e.label).toList());
      eventReq.cardEvent = cardEvent;


      final payEvent = EventReq_PayEvent();
      payEvent.status = criteriaViewModel.payUsage.status;
      eventReq.payEvent = payEvent;
    
      EvaluateCardsReply evaluateCardsReply = await CardService().cardClient.evaluateCards(eventReq);

      _cardEventResults.clear();
      _cardEventResults.addAll(evaluateCardsReply.cardEventResults);
      _loading = false;
      notifyListeners();

    } on GrpcError catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }

  }
}