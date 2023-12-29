import '../controller/single_video_controller.dart';
import 'package:get/get.dart';

class SingleVideoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SingleVideoController());
  }
}
