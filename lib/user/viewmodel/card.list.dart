

import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/shared/bank/model/bank.dart';
import 'package:pickrewardapp/shared/bank/repo/v1/bank.dart';
import 'package:pickrewardapp/shared/bank/repo/v1/proto/generated/bank.pb.dart';
import 'package:pickrewardapp/shared/card/model/card.dart';
import 'package:pickrewardapp/shared/card/repo/v1/card.dart';
import 'package:pickrewardapp/shared/card/repo/v1/proto/generated/card.pb.dart';
import 'package:pickrewardapp/shared/config/logger.dart';

class UserCardListViewModel extends ChangeNotifier {

  CardItemViewModel() {
    CardService().init();
  }

  final List<BankModel> _bankModels = [];
  final Map<String, List<CardItemModel>> _cardItemModels = {};
  final initLimit = 100;

  List<BankModel> get bankModels => _bankModels;
  List<CardItemModel> cardItemsModelByBankID(String bankID){
    return _cardItemModels[bankID] ?? [];
  }


  Future<void> fetchBanks() async{ 
    
    if (_bankModels.isNotEmpty) return;

    try {
      
      AllBanksReq allBanksReq = AllBanksReq();

      BanksReply banksReply = await BankService().bankClient.getAllBanks(allBanksReq);
      for (final b in banksReply.banks){
        _bankModels.add(BankModel(b.name, b.id, b.order, b.bankStatus));
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



  Future<void> fetchCardsByBankID(String bankID) async{ 
    
    if(_cardItemModels.containsKey(bankID)){
      return;
    }
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
          createDate: card.createDate.toInt(),
          updateDate:card.updateDate.toInt(),
          linkURL: card.linkURL,
          bankID: card.bankID,
          order: card.order,
          cardStatus: card.cardStatus,
        ));
      }
      
      _cardItemModels[bankID] = cardItemModels;
      
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