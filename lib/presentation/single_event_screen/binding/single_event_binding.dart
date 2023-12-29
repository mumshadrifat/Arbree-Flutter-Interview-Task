import '../controller/single_event_controller.dart';
import 'package:get/get.dart';

class SingleEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SingleEventController());
  }
}
