import 'package:get/get.dart';
import 'chat_item_model.dart';

class ChatModel {
  Rx<List<ChatItemModel>> chatItemList =
      Rx(List.generate(2, (index) => ChatItemModel()));
}
