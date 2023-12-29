import 'package:mumshad_s_application5/core/app_export.dart';
import 'package:mumshad_s_application5/presentation/chat_screen/models/chat_model.dart';
import 'package:flutter/material.dart';

class ChatController extends GetxController {
  TextEditingController writeBoxOneController = TextEditingController();

  Rx<ChatModel> chatModelObj = ChatModel().obs;

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
