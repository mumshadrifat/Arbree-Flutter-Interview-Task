import 'package:mumshad_s_application5/core/app_export.dart';
import 'package:mumshad_s_application5/presentation/video_chat_screen/models/video_chat_model.dart';

class VideoChatController extends GetxController {
  Rx<VideoChatModel> videoChatModelObj = VideoChatModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
