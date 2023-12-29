import '../controller/single_story_controller.dart';
import 'package:get/get.dart';

class SingleStoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SingleStoryController());
  }
}
