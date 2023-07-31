
import 'package:flutter/material.dart';


class EvaluationChannelCategoryViewModel with ChangeNotifier {

  int? _selectedChannelCategoryId;

  toggle(int selectedChannelCategoryId) {
    _selectedChannelCategoryId = selectedChannelCategoryId;
    notifyListeners();
  }

  int? get() => _selectedChannelCategoryId;

}

class ChannelSelectedViewModel with ChangeNotifier {
  
  Set<String> channelIDs = {};
  Set<String> taskIDs = {};
  Set<String> payIDs = {};

}

