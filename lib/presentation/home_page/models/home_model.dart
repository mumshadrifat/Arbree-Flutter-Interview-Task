import 'package:get/get.dart';
import 'home_item_model.dart';

class HomeModel {
  Rx<List<HomeItemModel>> homeItemList =
      Rx(List.generate(2, (index) => HomeItemModel()));
}
