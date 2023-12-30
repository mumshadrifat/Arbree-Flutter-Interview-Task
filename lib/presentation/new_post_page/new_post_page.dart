import 'controller/new_post_controller.dart';
import 'models/new_post_model.dart';
import 'package:flutter/material.dart';
import 'package:mumshad_s_application5/core/app_export.dart';
import 'package:mumshad_s_application5/widgets/app_bar/appbar_image_1.dart';
import 'package:mumshad_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:mumshad_s_application5/widgets/custom_button.dart';
import 'package:mumshad_s_application5/widgets/custom_icon_button.dart';
import 'package:mumshad_s_application5/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class NewPostPage extends StatelessWidget {
  NewPostController controller = Get.put(NewPostController(NewPostModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: true,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(70),
                leadingWidth: 66,
                leading: AppbarImage1(
                    height: getVerticalSize(37),
                    width: getHorizontalSize(38),
                    imagePath: ImageConstant.imgAvatar37x381,
                    margin: getMargin(left: 28, top: 9, bottom: 9)),
                title: Padding(
                    padding: getPadding(left: 8),
                    child: Text("lbl_anne_carry".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium14Gray900)),
                actions: [
                  CustomButton(
                      height: getVerticalSize(30),
                      width: getHorizontalSize(67),
                      text: "lbl_post".tr,
                      margin:
                          getMargin(left: 28, top: 13, right: 28, bottom: 12),
                      variant: ButtonVariant.FillIndigoA200,
                      padding: ButtonPadding.PaddingT5_1,
                      suffixWidget: Container(
                          margin: getMargin(left: 5),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgCheckmark18x18)))
                ]),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: controller.languageController,
                            hintText: "msg_what_are_you_th".tr,
                            margin: getMargin(left: 28, top: 14, right: 28),
                            variant: TextFormFieldVariant.FillGray10001,
                            padding: TextFormFieldPadding.PaddingT31,
                            textInputAction: TextInputAction.done)])),
            )));
  }

  onTapBtnCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
