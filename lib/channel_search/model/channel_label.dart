

class ChannelLabelModel {
  final int label;
  final String name;
  ChannelLabelModel(this.label, this.name);
}

class ChannelLabelModelMock {
  
  static List<ChannelLabelModel> getAll(){

    return [
      ChannelLabelModel(0, '國外消費'),
      ChannelLabelModel(1, '網購'),
      ChannelLabelModel(2, '一般消費'),
      ChannelLabelModel(3, '繳水電'),
      ChannelLabelModel(4, '瓦斯'),
      ChannelLabelModel(5, '出國旅遊'),
    ];
  }
}


// class LabelItemModel {
  
//   final int id;
//   final String name;
  
//   LabelItemModel({
//     required this.id, 
//     required this.name,
//   });

//   static final _labels = {
//     0:"不分通路",
//     1:"國內消費",
//     2:"海外消費",
//     3:"數位通路",
//     4:"實體通路",
//     5:"全臺餐廳"
//   };

//   static List<LabelItemModel> getAll(){
//     List<LabelItemModel> labels = [];
//     for(final l in _labels.keys) {
//       labels.add(LabelItemModel(id: l, name: _labels[l]!));
//     }
//     return labels;
//   }

//   static String getLabelName(int labelID) {
//     return _labels[labelID] ?? "";
//   }

// }