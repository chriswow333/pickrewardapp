



import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/shared/card/model/card.dart';
import 'package:pickrewardapp/shared/config/logger.dart';
import 'package:pickrewardapp/shared/card/repo/v1/card.dart';

import 'package:pickrewardapp/shared/card/repo/v1/proto/generated/card.pbgrpc.dart';


class SearchCardViewModel with ChangeNotifier {
  
  SearchCardViewModel() {
    CardService().init();
  }
  
  String _keyword = "";
  bool _searchCardFlag = false;
  final List<String> _searchKeywordHistory = [];
  List<CardItemModel> _searchItemModels = [];
  

  List<String> get searchKeywordHistory  => _searchKeywordHistory;


  void onFocusSearch() {
    _searchCardFlag = true;
    notifyListeners();
  }

  void cancel() {
    _keyword = "";
    _searchCardFlag = false;
    _searchItemModels.clear();
    notifyListeners();
  }



  void changeKeyword(String keyword) {

    if(keyword == _keyword)return;
    _keyword = keyword;

    if(keyword.isNotEmpty) {
      _searchCardFlag = true;
    }else {
      _searchItemModels.clear();
    }

    notifyListeners();
  }




  bool _searched = false;
  bool _loading = false;

  get searched => _searched;
  get loading => _loading;


  searchCard() {
    if(_keyword.isNotEmpty) {
      _loading = true;
      _searched = true;
      _fetchSearchCards();
      _searchKeywordHistory.insert(0, _keyword);
      if(_searchKeywordHistory.length == 10) {
        _searchKeywordHistory.removeLast();
      }
    }    
  }

  searchCardFromHistory(String historyKeyword) {
    _loading = true;
    _keyword = historyKeyword;
    _fetchSearchCards();
    notifyListeners();
  }

  get keyword => _keyword;
  get searchCardFlag => _searchCardFlag;
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
          bankName: cardReply.bankName,
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