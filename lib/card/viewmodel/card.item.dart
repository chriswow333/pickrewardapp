import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/shared/card/model/card.dart';
import 'package:pickrewardapp/shared/config/logger.dart';

import 'package:pickrewardapp/shared/card/repo/v1/card.dart';
import 'package:pickrewardapp/shared/card/repo/v1/proto/generated/card.pbgrpc.dart';


class CardItemViewModel with ChangeNotifier {
  
  CardItemViewModel() {
    CardService().init();
  }

  final Map<String, List<CardItemModel>> _cardItemModels = {};

  List<CardItemModel> getCardsByBankID(String bankID){
    return _cardItemModels[bankID] ?? [];
  }

  String _selectBankID = "";
  String get bankID => _selectBankID;



  List<CardItemModel> _latestItemModels = [];
  List<CardItemModel> getLatestCards(){
    return _latestItemModels;
  }


  Future<void> fetchLatestCards() async {

    try {

      CardsReply cardsReply = await CardService().cardClient.getLatestCards(EmptyReq());
      
      if (cardsReply.cards.isEmpty) return;


      List<CardItemModel> cardItemModels = [];
      for(CardsReply_Card cardReply in cardsReply.cards) {
        cardItemModels.add(CardItemModel(
          id:cardReply.id,
          name:cardReply.name,
          descriptions:cardReply.descriptions,
          linkURL: cardReply.linkURL,
          bankID: cardReply.bankID,
          order: cardReply.order,
          cardStatus: cardReply.cardStatus,
          createDate: cardReply.createDate.toInt(),
          updateDate: cardReply.updateDate.toInt(),
        ));
      }     
      
      _latestItemModels = cardItemModels;
      
      notifyListeners();

    } on GrpcError catch (e) {
      logger.e(e);
    } catch (e) {
      logger.e(e);
    }
  }
  

  bool loading = false;
  Future<void> fetchCardsByBankIDOnScroll() async{ 

    if(loading)return;
    
    List<CardItemModel>? cardItemModels =  _cardItemModels[_selectBankID]?? [];
    int offset = cardItemModels.length;
    loading = true;

    await _fetchCardsByBankID(_selectBankID, offset);
    loading = false;

  }


  static int initOffset = 0;

  Future<void> fetchCardsByBankIDWhenPressBank(String bankID) async{ 
    
    if (bankID == _selectBankID) return;

    if(_cardItemModels.containsKey(bankID)){
      _selectBankID = bankID;
      notifyListeners();
      return;
    }

    _fetchCardsByBankID(bankID, initOffset);
  }

  static int initLimit = 5;
  Future<void> _fetchCardsByBankID(String bankID, int offset) async{ 

    try {

      CardsByBankIDReq cardsByBankIDReq = CardsByBankIDReq();
      
      cardsByBankIDReq.id = bankID;

      CardsReply cardsReply = await CardService().cardClient.getCardsByBankID(cardsByBankIDReq);

      List<CardItemModel> cardItemModels = [];
      for(CardsReply_Card card in cardsReply.cards)  {
        cardItemModels.add(CardItemModel(
          id:card.id,
          name:card.name,
          descriptions:card.descriptions,
          linkURL: card.linkURL,
          bankID: card.bankID,
          order: card.order,
          cardStatus: card.cardStatus,
          createDate: card.createDate.toInt(),
          updateDate:card.updateDate.toInt(),
        ));
      }

      if(_cardItemModels.containsKey(bankID)) {
        _cardItemModels[bankID]!.addAll(cardItemModels);
      }else {
        _cardItemModels[bankID] = cardItemModels;
      }
      
      _selectBankID = bankID;
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





