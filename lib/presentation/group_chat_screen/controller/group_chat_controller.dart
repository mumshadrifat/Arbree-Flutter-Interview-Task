import 'package:mumshad_s_application5/core/app_export.dart';
import 'package:mumshad_s_application5/presentation/group_chat_screen/models/group_chat_model.dart';
import 'package:flutter/material.dart';

class GroupChatController extends GetxController {
  TextEditingController writeBoxOneController = TextEditingController();

  Rx<GroupChatModel> groupChatModelObj = GroupChatModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    writeBoxOneController.dispose();
  }
}
