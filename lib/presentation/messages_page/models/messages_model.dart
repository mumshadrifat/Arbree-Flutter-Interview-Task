import 'package:get/get.dart';
import 'messages_item_model.dart';

class MessagesModel {
  Rx<List<MessagesItemModel>> messagesItemList =
      Rx(List.generate(7, (index) => MessagesItemModel()));
}
