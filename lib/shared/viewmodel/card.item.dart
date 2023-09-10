import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

import 'package:pickrewardapp/card/repository/card/card.dart';
import 'package:pickrewardapp/card/repository/card/proto/generated/card.pbgrpc.dart';


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

      CardsProtoReply cardProtosReply = await CardService().cardClient.getLatestCards(EmptyRequest());
      
      List<CardItemModel> cardItemModels = [];

      for(CardProto cardProto in cardProtosReply.cards){
      
        cardItemModels.add(CardItemModel(
          id:cardProto.id,
          name:cardProto.name,
          descriptions:cardProto.descriptions,
          image:cardProto.image
        ));

        _latestItemModels = cardItemModels;
        notifyListeners();
      }     
    } on GrpcError catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }


  Future<void> fetchCardsByBankID(String bankID) async{ 

    if (bankID == _bankID)return;

    if(_cardItemModels[bankID] == null){

      try {

        final bankIDProto = BankIDProto();

        bankIDProto.id = bankID;

        CardsProtoReply cardProtosReply = await CardService().cardClient.getCardsByBankID(bankIDProto);
        
        List<CardItemModel> cardItemModels = [];

        for(CardProto cardProto in cardProtosReply.cards)  {
        
          cardItemModels.add(CardItemModel(
            id:cardProto.id,
            name:cardProto.name,
            descriptions:cardProto.descriptions,
            image:cardProto.image
          ));

          _cardItemModels[bankID] = cardItemModels;

        }     
      } on GrpcError catch (e) {
        ///handle all grpc errors here
        ///errors such us UNIMPLEMENTED,UNIMPLEMENTED etc...
        print(e);
      } catch (e) {
        ///handle all generic errors here
        print(e);
      }
    }

    _bankID = bankID;
    notifyListeners();
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

  CardItemModel({required this.id,
    required this.name,
    required this.descriptions,
    required this.image,
  }):createDate=0, updateDate=0, linkURL = "", bankID ="", order = 0, cardStatus = 0;
}
