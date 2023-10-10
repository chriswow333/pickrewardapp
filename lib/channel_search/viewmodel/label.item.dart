


// class RewardTypeName {


//   static final _rewardType = {
//     0:"無",
//     1:"現金回饋",
//     2:"LINE POINT 點數",
//     3:"小樹點",
//   };

//   static String get(int rewardType) {
//     return _rewardType[rewardType] ?? "";
//   }

// }

class LabelItemModel {
  
  final int id;
  final String name;
  
  LabelItemModel({
    required this.id, 
    required this.name,
  });

  static final _labels = {
    0:"不分通路",
    1:"國內消費",
    2:"海外消費",
  };

  static List<LabelItemModel> getAll(){
    List<LabelItemModel> labels = [];
    for(final l in _labels.keys) {
      labels.add(LabelItemModel(id: l, name: _labels[l]!));
    }
    return labels;
  }

}