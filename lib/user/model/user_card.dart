

import 'package:hive/hive.dart';

part 'user_card.g.dart';


@HiveType(typeId: 1)
class UserCardModel extends HiveObject {

  @HiveField(0)
  String? cardID;

  @HiveField(1)
  String? cardName;

  @HiveField(2)
  String? cardImage; 

  @HiveField(3)
  String? bankID;

  @HiveField(4)
  String? bankName;

  @HiveField(5)
  bool? enable;

}