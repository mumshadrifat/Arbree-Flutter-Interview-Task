import '../home_page/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:mumshad_s_application5/core/app_export.dart';
import 'package:mumshad_s_application5/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mumshad_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:mumshad_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:mumshad_s_application5/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(68),
                leadingWidth: 66,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgSearchGray900,
                    margin: getMargin(left: 28, top: 15, bottom: 15),
                    onTap: () {
                      onTapSearch();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_home".tr),
                actions: [
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgNotificationWhiteA700,
                      margin:
                          getMargin(left: 28, top: 15, right: 28, bottom: 15))
                ],
                styleType: Style.bgFillWhiteA700),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 28, top: 16),
                          child: Text("lbl_featured".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold16)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(left: 28, top: 15),
                              child: IntrinsicWidth(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                    CustomIconButton(
                                        height: 49,
                                        width: 48,
                                        variant: IconButtonVariant
                                            .OutlineBluegray2003f,
                                        padding: IconButtonPadding.PaddingAll15,
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgPlus)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapProfile1();
                                        },
                                        child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: getMargin(left: 18, top: 1),
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width:
                                                        getHorizontalSize(2)),
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder12),
                                            child: Container(
                                                height: getSize(48),
                                                width: getSize(48),
                                                padding: getPadding(all: 4),
                                                decoration: AppDecoration
                                                    .outline
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder12),
                                                child: Stack(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage40x401,
                                                      height: getSize(40),
                                                      width: getSize(40),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  9)),
                                                      alignment:
                                                          Alignment.center)
                                                ])))),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(left: 18, top: 1),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: getHorizontalSize(2)),
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder12),
                                        child: Container(
                                            height: getSize(48),
                                            width: getSize(48),
                                            padding: getPadding(all: 4),
                                            decoration: AppDecoration.outline
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder12),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgImage40x402,
                                                  height: getSize(40),
                                                  width: getSize(40),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(9)),
                                                  alignment: Alignment.center)
                                            ]))),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(left: 18, top: 1),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: getHorizontalSize(2)),
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder12),
                                        child: Container(
                                            height: getSize(48),
                                            width: getSize(48),
                                            padding: getPadding(all: 4),
                                            decoration: AppDecoration.outline
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder12),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgImage40x403,
                                                  height: getSize(40),
                                                  width: getSize(40),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(9)),
                                                  alignment: Alignment.center)
                                            ]))),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(left: 18, top: 1),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: ColorConstant.gray50033,
                                                width: getHorizontalSize(2)),
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder12),
                                        child: Container(
                                            height: getSize(48),
                                            width: getSize(48),
                                            padding: getPadding(all: 4),
                                            decoration: AppDecoration
                                                .outlineGray50033
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder12),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgImage40x404,
                                                  height: getSize(40),
                                                  width: getSize(40),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(9)),
                                                  alignment: Alignment.center)
                                            ]))),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(left: 18, top: 1),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: getHorizontalSize(2)),
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder12),
                                        child: Container(
                                            height: getSize(48),
                                            width: getSize(48),
                                            padding: getPadding(all: 4),
                                            decoration: AppDecoration.outline
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder12),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgImage40x405,
                                                  height: getSize(40),
                                                  width: getSize(40),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(9)),
                                                  alignment: Alignment.center)
                                            ])))
                                  ])))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 28, top: 36, right: 28),
                              child: Obx(() => ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(18));
                                  },
                                  itemCount: controller.homeModelObj.value
                                      .homeItemList.value.length,
                                  itemBuilder: (context, index) {
                                    HomeItemModel model = controller
                                        .homeModelObj
                                        .value
                                        .homeItemList
                                        .value[index];
                                    return HomeItemWidget(model);
                                  }))))
                    ]))));
  }

  onTapProfile1() {
    Get.toNamed(
      AppRoutes.singleStoryScreen,
    );
  }

  onTapSearch() {
    Get.toNamed(
      AppRoutes.searchTabContainerScreen,
    );
  }
}
