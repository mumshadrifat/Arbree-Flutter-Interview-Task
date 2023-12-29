import 'package:mumshad_s_application5/core/app_export.dart';
import 'package:mumshad_s_application5/presentation/events_page/models/events_model.dart';

class EventsController extends GetxController {
  EventsController(this.eventsModelObj);

  Rx<EventsModel> eventsModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
