import 'package:get/get.dart';
import 'search_results_item_model.dart';

class SearchResultsModel {
  Rx<List<SearchResultsItemModel>> searchResultsItemList =
      Rx(List.generate(2, (index) => SearchResultsItemModel()));
}
