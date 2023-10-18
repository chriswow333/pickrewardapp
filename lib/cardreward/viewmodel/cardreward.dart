

import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/cardreward/model/card_reward.dart';
import 'package:pickrewardapp/cardreward/model/card_reward_type.dart';
import 'package:pickrewardapp/shared/config/logger.dart';
import 'package:pickrewardapp/shared/model/card_header.dart';
import 'package:pickrewardapp/shared/repository/card/card.dart';
import 'package:pickrewardapp/shared/repository/card/proto/generated/card.pbgrpc.dart';

class CardRewardViewModel with ChangeNotifier {

  final List<CardRewardModel> _activityCardRewardModels = [];

  List<CardRewardModel> get activityCardRewardModels => _activityCardRewardModels;
  
  
  final List<CardRewardModel> _evaluationCardRewardModels = [];
  List<CardRewardModel> get evaluationCardRewardModels => _evaluationCardRewardModels;


  CardRewardModel? expandedCardRewardEvaluation;


  CardRewardViewModel(String cardID) {
    CardService().init();
    _fetchCardRewards(cardID);
  }

  bool fetchedCardRewards = false;
  static int initLimit = 1000;
  static int initOffset = 0;
  Future<void> _fetchCardRewards(String cardID) async{ 
    
    if (fetchedCardRewards) return;

    fetchedCardRewards = true;

    try {
      
      CardRewardsByCardIDReq cardRewardsByCardIDReq = CardRewardsByCardIDReq();
      cardRewardsByCardIDReq.cardID = cardID;
      cardRewardsByCardIDReq.limit = initLimit;
      cardRewardsByCardIDReq.offset = initOffset;

      CardRewardsReply cardRewardsReply = await CardService().cardClient.getCardRewardsByCardID(cardRewardsByCardIDReq);

      for(final c in cardRewardsReply.cardRewards) {

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
          createDate: DateTime.fromMillisecondsSinceEpoch(c.createDate.toInt()*1000),
          updateDate: DateTime.fromMillisecondsSinceEpoch(c.updateDate.toInt()*1000),
          startDate:DateTime.fromMillisecondsSinceEpoch(c.startDate.toInt()*1000),
          endDate:DateTime.fromMillisecondsSinceEpoch(c.endDate.toInt()*1000), 
          cardRewardType: c.cardRewardType,
          reward: RewardModel(
            id:c.reward.id,
            name:c.reward.name,
            rewardType: c.reward.rewardType,
            createDate: c.reward.createDate.toInt(),
            updateDate:c.reward.updateDate.toInt(),
          ),
          order: c.order,
        );


        if(cardRewardModel.cardRewardType == CardRewardTypeEnum.activity.cardRewardType) {
          _activityCardRewardModels.add(cardRewardModel);
        }else if(cardRewardModel.cardRewardType == CardRewardTypeEnum.evaluation.cardRewardType) {
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


