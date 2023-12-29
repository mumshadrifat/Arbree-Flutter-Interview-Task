import '../my_friends_screen/widgets/my_friends_item_widget.dart';
import 'controller/my_friends_controller.dart';
import 'models/my_friends_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mumshad_s_application5/core/app_export.dart';
import 'package:mumshad_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:mumshad_s_application5/widgets/custom_icon_button.dart';
import 'package:mumshad_s_application5/widgets/custom_text_form_field.dart';

class MyFriendsScreen extends GetWidget<MyFriendsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(top: 10, bottom: 10),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomAppBar(
                                        height: getVerticalSize(64),
                                        leadingWidth: 66,
                                        leading: CustomIconButton(
                                            height: 38,
                                            width: 38,
                                            margin: getMargin(
                                                left: 28, top: 5, bottom: 5),
                                            variant: IconButtonVariant
                                                .FillIndigoA200,
                                            onTap: () {
                                              onTapBtnArrowleft();
                                            },
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowleftWhiteA700)),
                                        title: CustomTextFormField(
                                            width: getHorizontalSize(271),
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.fieldController,
                                            hintText: "msg_search_in_frien".tr,
                                            margin: getMargin(left: 10),
                                            variant: TextFormFieldVariant
                                                .FillGray5006c,
                                            padding: TextFormFieldPadding
                                                .PaddingT15_2,
                                            textInputAction:
                                                TextInputAction.done,
                                            prefix: Container(
                                                margin: getMargin(
                                                    left: 15,
                                                    top: 16,
                                                    right: 10,
                                                    bottom: 16),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgSearchGray500)),
                                            prefixConstraints: BoxConstraints(
                                                maxHeight:
                                                    getVerticalSize(48))))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 28, top: 16, right: 28),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(8));
                              },
                              itemCount: controller.myFriendsModelObj.value
                                  .myFriendsItemList.value.length,
                              itemBuilder: (context, index) {
                                MyFriendsItemModel model = controller
                                    .myFriendsModelObj
                                    .value
                                    .myFriendsItemList
                                    .value[index];
                                return MyFriendsItemWidget(model);
                              })))
                    ]))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
