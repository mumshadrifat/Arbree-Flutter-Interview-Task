import 'package:mumshad_s_application5/core/app_export.dart';
import 'package:mumshad_s_application5/presentation/single_event_screen/models/single_event_model.dart';

class SingleEventController extends GetxController {
  Rx<SingleEventModel> singleEventModelObj = SingleEventModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
