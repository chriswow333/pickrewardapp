

// class ChannelLabelModel {
//   final int label;
//   final String name;
//   ChannelLabelModel(this.label, this.name);
// }




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