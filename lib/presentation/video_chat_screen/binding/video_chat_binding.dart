import '../controller/video_chat_controller.dart';
import 'package:get/get.dart';

class VideoChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VideoChatController());
  }
}
