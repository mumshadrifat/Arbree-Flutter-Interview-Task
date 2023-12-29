import 'package:get/get.dart';
import 'single_event_item_model.dart';

class SingleEventModel {
  Rx<List<SingleEventItemModel>> singleEventItemList =
      Rx(List.generate(2, (index) => SingleEventItemModel()));
}
