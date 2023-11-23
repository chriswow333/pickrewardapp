


class TaskLabelModel {
  final int label;
  final String name;
  TaskLabelModel(this.label, this.name);
}


class TaskLabelModelMock {
  
  static List<TaskLabelModel> getAll(){
    return [
      TaskLabelModel(0, '新戶'),
      TaskLabelModel(1, '需登錄'),
      TaskLabelModel(2, '限量'),
      TaskLabelModel(3, '限定日'),
      
    ];
  }
}
