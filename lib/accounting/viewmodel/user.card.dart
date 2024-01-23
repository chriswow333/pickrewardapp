
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
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

    var box = Hive.box(hiveKey);
    final userCards = box.get(userCardsKey);
    if(userCards == null) {
      return;
    }

    print(userCards);
    _userCardModels = (userCards as List).map((e) => e as UserCardModel).toList();
    notifyListeners();
  }

  

}