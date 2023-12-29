import 'package:get/get.dart';
import 'listavatar1_item_model.dart';

class GroupChatModel {
  Rx<List<Listavatar1ItemModel>> listavatar1ItemList =
      Rx(List.generate(2, (index) => Listavatar1ItemModel()));
}
