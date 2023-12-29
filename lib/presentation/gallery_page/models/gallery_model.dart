import 'package:get/get.dart';
import 'gallery_item_model.dart';

class GalleryModel {
  Rx<List<GalleryItemModel>> galleryItemList =
      Rx(List.generate(12, (index) => GalleryItemModel()));
}
