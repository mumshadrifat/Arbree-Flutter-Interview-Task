import 'package:get/get.dart';
import 'events_item_model.dart';

class EventsModel {
  Rx<List<EventsItemModel>> eventsItemList =
      Rx(List.generate(2, (index) => EventsItemModel()));
}
