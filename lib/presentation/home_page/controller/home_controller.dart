import 'package:mumshad_s_application5/core/app_export.dart';
import 'package:mumshad_s_application5/presentation/home_page/models/home_model.dart';

import '../../../data/database_helper/databse_helper.dart';
import '../../../data/models/post_model/PostModel.dart';

class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  Rx<HomeModel> homeModelObj;
  List<Map> postMap = [];
  RxList<PostModel> postList = <PostModel>[].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> preLoadedData() async {
    PostModel postModel = PostModel();
    postMap = await DataBaseHelper.instance.postList();
    postMap?.forEach((row) {
      postList?.add(PostModel.fromJson(row));
      print(row);
    });
  }
}