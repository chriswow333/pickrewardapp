

import 'package:flutter/material.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:pickrewardapp/channel_search/model/task_label.dart';
import 'package:pickrewardapp/shared/config/logger.dart';
import 'package:pickrewardapp/shared/card/repo/v1/card.dart';
import 'package:pickrewardapp/shared/card/repo/v1/proto/generated/card.pb.dart';


class TaskLabelViewModel with ChangeNotifier {

  TaskLabelViewModel(){
    CardService().init();
    fetchTaskLabelModels();
  }

  final List<TaskLabelModel> _taskLabelModels = [];
  List<TaskLabelModel> get taskLabelModels => _taskLabelModels;
  bool taskLabelsLoading = false;
  Future<void> fetchTaskLabelModels() async {
    try {
      taskLabelsLoading = true;
      TaskLabelsReply taskLabelReply = await CardService().cardClient.getShowTaskLabels(EmptyReq());
      List<TaskLabelsReply_TaskLabel> taskLabels = taskLabelReply.taskLabels;
      for (TaskLabelsReply_TaskLabel taskLabel in taskLabels) {
        _taskLabelModels.add(
          TaskLabelModel(taskLabel.label,taskLabel.name,)
        );
      }
      taskLabelsLoading = false;
      notifyListeners();
    } on GrpcError catch (e) {
      logger.e(e);
    } catch (e) {
      logger.e(e);
    }
  }

}