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
    controller.preLoadedData();
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
            body: SingleChildScrollView(
              child: Container(
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
                                    itemCount: controller.postList.length,
                                    itemBuilder: (context, index) {

                                      return Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          width: double.maxFinite,
                                          child: Container(
                                            padding: getPadding(
                                              left: 18,
                                              top: 19,
                                              right: 18,
                                              bottom: 19,
                                            ),
                                            decoration: AppDecoration.fillWhiteA700.copyWith(
                                              borderRadius: BorderRadiusStyle.roundedBorder12,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant.imgImage38x381,
                                                      height: getSize(
                                                        38,
                                                      ),
                                                      width: getSize(
                                                        38,
                                                      ),
                                                      radius: BorderRadius.circular(
                                                        getHorizontalSize(
                                                          12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 8,
                                                      ),
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Text(
                                                            controller.postList[index].postUserId.toString(),
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                            style: AppStyle.txtInterMedium14Gray900,
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
                                                              top: 5,
                                                            ),
                                                            child: Text(
                                                              "lbl_5_min_ago".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.left,
                                                              style: AppStyle.txtInterRegular12,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    CustomImageView(
                                                      svgPath: ImageConstant.imgOverflowmenu,
                                                      height: getSize(
                                                        38,
                                                      ),
                                                      width: getSize(
                                                        38,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 21,
                                                  ),
                                                  child: Text(
                                                    controller.postList[index].description!,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtInterRegular14Gray500,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 20,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant.imgPhoto1160x193,
                                                        height: getVerticalSize(
                                                          160,
                                                        ),
                                                        width: getHorizontalSize(
                                                          193,
                                                        ),
                                                        radius: BorderRadius.circular(
                                                          getHorizontalSize(
                                                            8,
                                                          ),
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath: ImageConstant.imgPhoto275x80,
                                                            height: getVerticalSize(
                                                              75,
                                                            ),
                                                            width: getHorizontalSize(
                                                              80,
                                                            ),
                                                            radius: BorderRadius.circular(
                                                              getHorizontalSize(
                                                                8,
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            height: getVerticalSize(
                                                              75,
                                                            ),
                                                            width: getHorizontalSize(
                                                              80,
                                                            ),
                                                            margin: getMargin(
                                                              top: 10,
                                                            ),
                                                            child: Stack(
                                                              alignment: Alignment.center,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath: ImageConstant.imgPhoto375x80,
                                                                  height: getVerticalSize(
                                                                    75,
                                                                  ),
                                                                  width: getHorizontalSize(
                                                                    80,
                                                                  ),
                                                                  radius: BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                      8,
                                                                    ),
                                                                  ),
                                                                  alignment: Alignment.center,
                                                                ),
                                                                Align(
                                                                  alignment: Alignment.center,
                                                                  child: Row(
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    children: [
                                                                      CustomImageView(
                                                                        svgPath:
                                                                        ImageConstant.imgSettingsWhiteA700,
                                                                        height: getSize(
                                                                          14,
                                                                        ),
                                                                        width: getSize(
                                                                          14,
                                                                        ),
                                                                        margin: getMargin(
                                                                          top: 1,
                                                                          bottom: 1,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: getPadding(
                                                                          left: 5,
                                                                        ),
                                                                        child: Text(
                                                                          "lbl_17".tr,
                                                                          overflow: TextOverflow.ellipsis,
                                                                          textAlign: TextAlign.left,
                                                                          style: AppStyle.txtSFProDisplayMedium14,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                    padding: getPadding(
                                                      left: 6,
                                                      top: 24,
                                                      right: 11,
                                                      bottom: 5,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        CustomImageView(
                                                          svgPath: ImageConstant.imgFavorite1,
                                                          height: getSize(
                                                            14,
                                                          ),
                                                          width: getSize(
                                                            14,
                                                          ),
                                                          margin: getMargin(
                                                            top: 1,
                                                            bottom: 1,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 5,
                                                          ),
                                                          child: Text(
                                                            "lbl_326".tr,
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                            style: AppStyle.txtInterMedium14Gray900,
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          svgPath: ImageConstant.imgLocation,
                                                          height: getSize(
                                                            14,
                                                          ),
                                                          width: getSize(
                                                            14,
                                                          ),
                                                          margin: getMargin(
                                                            left: 28,
                                                            top: 1,
                                                            bottom: 1,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 6,
                                                          ),
                                                          child: Text(
                                                            "lbl_148".tr,
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                            style: AppStyle.txtInterMedium14Gray900,
                                                          ),
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                          "lbl_share".tr,
                                                          overflow: TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style: AppStyle.txtInterMedium14Gray900,
                                                        ),
                                                        CustomImageView(
                                                          svgPath: ImageConstant.imgReply,
                                                          height: getSize(
                                                            14,
                                                          ),
                                                          width: getSize(
                                                            14,
                                                          ),
                                                          margin: getMargin(
                                                            left: 5,
                                                            top: 1,
                                                            bottom: 1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    }))))
                      ])),
            )));
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
