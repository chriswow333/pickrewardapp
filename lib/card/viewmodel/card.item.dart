import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

import 'package:pickrewardapp/shared/repository/card/card.dart';
import 'package:pickrewardapp/shared/repository/card/proto/generated/card.pbgrpc.dart';


class CardItemViewModel with ChangeNotifier {
  
  CardItemViewModel() {
    CardService().init();
  }

  final Map<String, List<CardItemModel>> _cardItemModels = {};

  List<CardItemModel> getCardsByBankID(String bankID){
    return _cardItemModels[bankID] ?? [];
  }

  String _bankID = "";

  get bankID => _bankID;

  List<CardItemModel> _latestItemModels = [];

  List<CardItemModel> getLatestCards(){
    return _latestItemModels;
  }

  Future<void> fetchLatestCards() async {

    try {

      CardsReply cardsReply = await CardService().cardClient.getLatestCards(EmptyReq());
      
      if (cardsReply.cards.isEmpty) return;

      List<CardItemModel> cardItemModels = [];

      for(CardsReply_Card cardReply in cardsReply.cards){
        cardItemModels.add(CardItemModel(
          id:cardReply.id,
          name:cardReply.name,
          descriptions:cardReply.descriptions,
          image:cardReply.image,
          createDate: cardReply.createDate.toInt(),
          updateDate: cardReply.updateDate.toInt(),
          linkURL: cardReply.linkURL,
          bankID: cardReply.bankID,
          order: cardReply.order,
          cardStatus: cardReply.cardStatus,
        ));
      }     
      
      _latestItemModels = cardItemModels;
      
      notifyListeners();

    } on GrpcError catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }



  final int initLimit = 5;
  final int initOffset = 0;
  Future<void> fetchCardsByBankID(String bankID) async{ 

    if (bankID == _bankID) return;

    if(_cardItemModels.containsKey(bankID)){
      _bankID = bankID;
      notifyListeners();
      return;
    }

    try {

      CardsByBankIDReq cardsByBankIDReq = CardsByBankIDReq();

      cardsByBankIDReq.id = bankID;
      cardsByBankIDReq.limit = initLimit;
      if(_cardItemModels.containsKey(bankID)){
        cardsByBankIDReq.offset = _cardItemModels[bankID]!.length;
      }else {
        cardsByBankIDReq.offset = initOffset;
      }
      

      CardsReply cardsReply = await CardService().cardClient.getCardsByBankID(cardsByBankIDReq);
      
      List<CardItemModel> cardItemModels = [];


      for(CardsReply_Card card in cardsReply.cards)  {
        cardItemModels.add(CardItemModel(
          id:card.id,
          name:card.name,
          descriptions:card.descriptions,
          image:card.image,
          createDate: card.createDate.toInt(),
          updateDate:card.updateDate.toInt(),
          linkURL: card.linkURL,
          bankID: card.bankID,
          order: card.order,
          cardStatus: card.cardStatus,
        ));
      }


      _cardItemModels[bankID] = cardItemModels;
      _bankID = bankID;
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


class CardItemModel {

  final String id;
  final String name;
  final List<String> descriptions;
  final String image;
  int createDate;
  int updateDate;
  String linkURL;
  String bankID;
  int order;
  int cardStatus;

  CardItemModel({
    required this.id,
    required this.name,
    required this.descriptions,
    required this.image,
    required this.createDate,
    required this.updateDate,
    required this.linkURL,
    required this.bankID,
    required this.order,
    required this.cardStatus,
  });
}



class CardHeaderItemModel {

  final String id;
  final String name;
  final List<String> descriptions;
  final String image;
 

  CardHeaderItemModel({
    required this.id,
    required this.name,
    required this.descriptions,
    required this.image,
  });
}