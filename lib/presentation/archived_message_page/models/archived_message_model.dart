import 'package:get/get.dart';
import 'listavatar_item_model.dart';

class ArchivedMessageModel {
  Rx<List<ListavatarItemModel>> listavatarItemList =
      Rx(List.generate(3, (index) => ListavatarItemModel()));
}
