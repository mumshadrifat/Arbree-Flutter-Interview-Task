import 'package:get/get.dart';
import 'my_friends_item_model.dart';

class MyFriendsModel {
  Rx<List<MyFriendsItemModel>> myFriendsItemList =
      Rx(List.generate(5, (index) => MyFriendsItemModel()));
}
