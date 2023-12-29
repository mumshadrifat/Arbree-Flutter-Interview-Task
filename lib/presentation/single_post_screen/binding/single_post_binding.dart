import '../controller/single_post_controller.dart';
import 'package:get/get.dart';

class SinglePostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SinglePostController());
  }
}
