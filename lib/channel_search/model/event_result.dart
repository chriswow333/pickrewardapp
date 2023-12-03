import 'package:pickrewardapp/channel_search/viewmodel/criteria.selected.dart';
import 'package:pickrewardapp/shared/repository/card/v1/proto/generated/card.pbgrpc.dart';

class CardEventResultsModel {
  
  List<CardEventResultModel> cardEventResultModels = [];

  CardEventResultsModel.build(List<EvaluateCardsReply_CardEventResultResp> resp, CriteriaViewModel criteriaViewModel){

    for(EvaluateCardsReply_CardEventResultResp cardEventResultResp in resp) {
      cardEventResultModels.add(CardEventResultModel.build(cardEventResultResp, criteriaViewModel));
    }
  }
}


class CardEventResultModel {


  late String cardID;
  late String cardName;
  late String cardImage;
  late List<String> cardDesc;
  late DateTime updateDate;
  late String linkURL;
  late String bankID;
  late String bankName;
  late int cost;

  List<CardRewardEventResultModel> cardRewardEventResultModels = [];


  CardEventResultModel.build(EvaluateCardsReply_CardEventResultResp resp, CriteriaViewModel criteriaViewModel){

    cost = criteriaViewModel.cost.value;
    cardID = resp.cardID;
    cardName = resp.cardName;
    cardImage = resp.cardImage;
    cardDesc = resp.cardDesc;
    updateDate = DateTime.fromMillisecondsSinceEpoch(resp.updateDate.toInt()*1000);
    linkURL = resp.linkURL;
    bankID = resp.bankID;
    bankName = resp.bankName;
    
    for(EvaluateCardsReply_CardRewardEventResultResp cardRewardEventResultResp in resp.cardRewardEventResultResps) {
      cardRewardEventResultModels.add(CardRewardEventResultModel.build(cardRewardEventResultResp, criteriaViewModel));
    }
  }

}


class CardRewardEventResultModel {

  late String id;
  late String cardRewardName;
  late DateTime cardRewardStartDate;
  late DateTime cardRewardEndDate;
  List<String> cardRewardTaskLabelNames = [];
  late String rewardTypeName;
  late EvaluationEventResultModel evaluationEventResultModel;


  CardRewardEventResultModel.build(EvaluateCardsReply_CardRewardEventResultResp resp, CriteriaViewModel criteriaViewModel){
    id = resp.id;
    cardRewardName = resp.cardRewardName;
    cardRewardStartDate = DateTime.fromMillisecondsSinceEpoch(resp.cardRewardStartDate.toInt()*1000);
    cardRewardEndDate = DateTime.fromMillisecondsSinceEpoch(resp.cardRewardEndDate.toInt()*1000);
    rewardTypeName = resp.rewardTypeName;
    cardRewardTaskLabelNames = resp.taskLabelNames;
    evaluationEventResultModel = EvaluationEventResultModel.build(resp.evaluationEventResultResp, criteriaViewModel);
  }

}


class EvaluationEventResultModel {
  late String id;
  late int rewardType;
  late int calculateType;
  late int cost;
  late double getReturn;
  late double getPercentage;
  late int feedbackEventResultStatus;
  List<String> cardRewardTaskLabelMatched = [];
  List<String> channelMatched = [];
  List<String> channelLabelMatched = [];
  List<String> payMatched = [];

  EvaluationEventResultModel.build(EvaluationEventResultResp resp, CriteriaViewModel criteriaViewModel){

    id = resp.id;
    rewardType = resp.feedbackEventResultResp.rewardType;
    calculateType = resp.feedbackEventResultResp.calculateType;
    cost = resp.feedbackEventResultResp.cost;
    getReturn = resp.feedbackEventResultResp.getReturn;
    getPercentage = resp.feedbackEventResultResp.getPercentage;
    feedbackEventResultStatus = resp.feedbackEventResultResp.feedbackEventResultStatus;

    cardRewardTaskLabelMatched =  criteriaViewModel.getTaskLabelsName(resp.cardRewardTaskLabelMatched);
    channelMatched = criteriaViewModel.getChannelNames(resp.channelMatched);
    List<int> channelLabelMatchedInt = [];
    for(String label in resp.channelLabelMatched) {
      int? labelInt = int.tryParse(label);
      if(labelInt != null){
        channelLabelMatchedInt.add(labelInt);
      }
    }
    channelLabelMatched = criteriaViewModel.getChannelLabelNames(channelLabelMatchedInt);
    
    payMatched = resp.payMatched;
  }

}