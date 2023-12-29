import '../controller/my_friends_controller.dart';
import 'package:get/get.dart';

class MyFriendsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyFriendsController());
  }
}
