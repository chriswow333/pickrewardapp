


import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/card/model/card.dart';
import 'package:pickrewardapp/user/model/user_card.dart';

class UserCardViewModel extends ChangeNotifier {
  
  final String hiveKey = "pickrewardapp";
  final String userCardsKey = "userCards";

  UserCardViewModel(){
    fetchUserCardModels();
  }
  
  List<UserCardModel> _userCardModels = [];
  List<UserCardModel> get userCardModels => _userCardModels;

  fetchUserCardModels() {

    // var box = Hive.box(hiveKey);
    final userCards = null; //;box.get(userCardsKey);
    if(userCards == null) {
      return;
    }
    _userCardModels = (userCards as List).map((e) => e as UserCardModel).toList();
    notifyListeners();
  }




  void toggleCard(CardItemModel cardItemModel) {

    int idx = _userCardModels.length;
    for(int i = 0; i < _userCardModels.length; i++) {
      if (cardItemModel.id == _userCardModels[i].cardID) {
        idx = i;
        break;
      }
    }

    if (idx == _userCardModels.length) {
      UserCardModel userCardModel = UserCardModel();
      userCardModel.bankID = cardItemModel.bankID;
      userCardModel.bankName =  cardItemModel.bankName;
      userCardModel.cardID = cardItemModel.id;
      userCardModel.cardName = cardItemModel.name;
      userCardModel.cardImage = cardItemModel.image;
      userCardModel.enable = true;
      _userCardModels.add(userCardModel);
    }else{
      _userCardModels.removeAt(idx);
    }

    try {

      // var box = Hive.box(hiveKey);
      // box.put(userCardsKey, _userCardModels); 
      notifyListeners(); 
    }catch(e) {
      print(e);
    }
  }

}