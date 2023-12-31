import 'dart:math';

import 'package:get_storage/get_storage.dart';
import 'package:mumshad_s_application5/core/app_export.dart';
import 'package:mumshad_s_application5/data/models/post_model/PostModel.dart';
import 'package:mumshad_s_application5/presentation/new_post_page/models/new_post_model.dart';
import 'package:flutter/material.dart';
import 'package:mumshad_s_application5/core/utils/date_time_utils.dart';

import '../../../data/database_helper/databse_helper.dart';

class NewPostController extends GetxController {
  NewPostController(this.newPostModelObj);
   GetStorage box=GetStorage();
  TextEditingController languageController = TextEditingController();
  String description="";

  Rx<NewPostModel> newPostModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    languageController.dispose();
  }

  Future<void> savePostData() async {
    DateTime now = DateTime.now();
    String formattedDate = now.format();
    description=languageController.text;
    int? insId;
    PostModel postModel=PostModel();
    postModel.description=description;
    postModel.createdTime=formattedDate;
    postModel.noOfLikes=22;
    postModel.postUserId=box.read('current_user');
    print(postModel.description);
    print(postModel.createdTime);
    print(postModel.noOfLikes);
    print(postModel.postUserId);

    insId = await DataBaseHelper.instance.insertPost(postModel);
    Get.snackbar('Login', 'Post has been created',
        snackPosition: SnackPosition.BOTTOM);


  }
}
