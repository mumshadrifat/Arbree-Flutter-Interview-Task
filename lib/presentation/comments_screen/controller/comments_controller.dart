import 'package:mumshad_s_application5/core/app_export.dart';
import 'package:mumshad_s_application5/presentation/comments_screen/models/comments_model.dart';

class CommentsController extends GetxController {
  Rx<CommentsModel> commentsModelObj = CommentsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
