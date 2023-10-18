



import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/shared/config/logger.dart';
import 'package:pickrewardapp/shared/model/card.dart';
import 'package:pickrewardapp/shared/repository/card/card.dart';

import 'package:pickrewardapp/shared/repository/card/proto/generated/card.pbgrpc.dart';


class SearchCardViewModel with ChangeNotifier {
  
  SearchCardViewModel() {
    CardService().init();
  }
  
  String _keyword = "";
  bool _searchCardFlag = false;
  
  void changeKeyword(String keyword){
    if(keyword == _keyword)return;
    _keyword = keyword;

     if(keyword.isNotEmpty) {
      _searchCardFlag = true;
    }else {
      _searchCardFlag = false;
      _loading = false;
    }
    notifyListeners();
  }
  

  bool _searched = false;
  get searched => _searched;


  searchCard() {
    if(_keyword.isNotEmpty) {
      _searched = true;
      _fetchSearchCards();
    }    
  }


  bool _loading = false;
  get loading => _loading;
  setLoading(){
    _loading = true;
    notifyListeners();
  }


  get keyword => _keyword;

  get searchCardFlag => _searchCardFlag;


  List<CardItemModel> _searchItemModels = [];

  get searchItemModels => _searchItemModels;


  Future<void> _fetchSearchCards() async {
    try {

      SearchCardReq searchCardReq = SearchCardReq();
      searchCardReq.keyword = _keyword;
      SearchCardReply searchCardReply = await CardService().cardClient.searchCard(searchCardReq);
      
      List<CardItemModel> cardItemModels = [];

      for(SearchCardReply_Card cardReply in searchCardReply.cards){
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
      _searchItemModels = cardItemModels;
      _loading = false;
      notifyListeners();
    } on GrpcError catch (e) {
      logger.e(e);
    } catch (e) {
      logger.e(e);
    }
  }

}