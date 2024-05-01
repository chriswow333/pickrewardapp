

import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/repo/card/model/card_header.dart';
import 'package:pickrewardapp/repo/cardreward/model/cardreward.dart';
import 'package:pickrewardapp/repo/cardreward/v1/cardreward.dart';
import 'package:pickrewardapp/repo/cardreward/v1/proto/generated/cardreward.pb.dart';
import 'package:pickrewardapp/shared/config/logger.dart';


class CardRewardViewModel with ChangeNotifier {

  final List<CardRewardModel> _activityCardRewardModels = [];
  List<CardRewardModel> get activityCardRewardModels => _activityCardRewardModels;

  final List<CardRewardModel> _evaluationCardRewardModels = [];
  List<CardRewardModel> get evaluationCardRewardModels => _evaluationCardRewardModels;

  CardRewardViewModel(String cardID) {
    CardRewardRepo().init();
    _fetchCardRewards(cardID);

  }

  Future<void> _fetchCardRewards(String cardID) async { 

    try {

      CardRewardIDReq cardRewardIDReq = CardRewardIDReq();
      cardRewardIDReq.id = cardID;

      CardRewardsReply cardRewardsReply = await CardRewardRepo().cardRewardClient.getCardRewardsByCardID(cardRewardIDReq);
      if (cardRewardsReply.reply.status != 0) {
        logger.e("reply error");
        return;
      }




      for(CardRewardsReply_CardReward c in cardRewardsReply.cardRewards){
        
        CardRewardModel cardRewardModel = CardRewardModel(
          id: c.id,
          cardID: c.cardID,
          name:c.name,
          descriptions:c.descriptions
            .map((d) => DescriptionModel(
              name:d.name,
              order:d.order,
              desc: d.desc,
            )).toList(),
          startDate:DateTime.fromMillisecondsSinceEpoch(c.startDate.toInt()*1000),
          endDate:DateTime.fromMillisecondsSinceEpoch(c.endDate.toInt()*1000), 
          cardRewardType: c.cardRewardType,
          feedbackType: FeedbackType(
            id:c.feedbackType.id,
            name:c.feedbackType.name,
            feedbackType:c.feedbackType.feedbackType,
            createDate: DateTime.fromMillisecondsSinceEpoch(c.feedbackType.createDate.toInt()*1000),
            updateDate: DateTime.fromMillisecondsSinceEpoch(c.feedbackType.createDate.toInt()*1000),
          ),
          taskLabels: c.taskLabels
          .map((d)=>TaskLabelModel(
            label: d.label, 
            name: d.name, 
            order: d.order,
            show: d.show,
          )).toList(),
          order: c.order,
          cardRewardStatus: c.cardRewardStatus,
          createDate: DateTime.fromMillisecondsSinceEpoch(c.createDate.toInt()*1000),
          updateDate: DateTime.fromMillisecondsSinceEpoch(c.updateDate.toInt()*1000),
        );


        if(c.cardRewardType == CardRewardTypeEnum.activity.cardRewardType) {
          _activityCardRewardModels.add(cardRewardModel);
        }else if(c.cardRewardType == CardRewardTypeEnum.evaluation.cardRewardType){
          _evaluationCardRewardModels.add(cardRewardModel);
        }
      }

      notifyListeners();

     } on GrpcError catch (e) {
      ///handle all grpc errors here
      ///errors such us UNIMPLEMENTED,UNIMPLEMENTED etc...
      logger.e(e);
    } catch (e) {
      ///handle all generic errors here
      logger.e(e);
    }

  }
}


class CardHeaderViewModel with ChangeNotifier {
  final CardHeaderItemModel _cardHeaderItemModel;
  CardHeaderViewModel(this._cardHeaderItemModel);
  get cardHeaderItemModel => _cardHeaderItemModel;
}


