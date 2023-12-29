import 'package:mumshad_s_application5/core/app_export.dart';
import 'package:mumshad_s_application5/presentation/notifications_screen/models/notifications_model.dart';

class NotificationsController extends GetxController {
  Rx<NotificationsModel> notificationsModelObj = NotificationsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
