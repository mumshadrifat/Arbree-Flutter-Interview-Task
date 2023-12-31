import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:mumshad_s_application5/core/app_export.dart';
import 'package:mumshad_s_application5/widgets/custom_button.dart';
import 'package:mumshad_s_application5/widgets/custom_text_form_field.dart';
import 'package:mumshad_s_application5/domain/facebookauth/facebook_auth_helper.dart';
import 'package:mumshad_s_application5/domain/googleauth/google_auth_helper.dart';

class LoginScreen extends GetWidget<LoginController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
              key: _formKey,
              child: Container(
                  height: size.height,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage287x375,
                        height: getVerticalSize(287),
                        width: getHorizontalSize(375),
                        alignment: Alignment.topCenter),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            padding: getPadding(
                                left: 28, top: 39, right: 28, bottom: 39),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL32),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("lbl_welcome_back".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold22),
                                  Padding(
                                      padding: getPadding(top: 14),
                                      child: Text("msg_login_to_contin".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium14)),
                                  Padding(
                                      padding: getPadding(top: 28),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: EdgeInsets.all(0),
                                                color: ColorConstant.indigo600,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder12),
                                                child: Container(
                                                    height: getVerticalSize(58),
                                                    width:
                                                        getHorizontalSize(99),
                                                    padding: getPadding(
                                                        left: 40,
                                                        top: 20,
                                                        right: 40,
                                                        bottom: 20),
                                                    decoration: AppDecoration
                                                        .fillIndigo600
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder12),
                                                    child: Stack(children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgFacebook,
                                                          height: getSize(18),
                                                          width: getSize(18),
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          onTap: () {
                                                            onTapImgFacebook();
                                                          })
                                                    ]))),
                                            Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: EdgeInsets.all(0),
                                                color: ColorConstant.gray900,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder12),
                                                child: Container(
                                                    height: getVerticalSize(58),
                                                    width:
                                                        getHorizontalSize(99),
                                                    padding: getPadding(
                                                        left: 40,
                                                        top: 20,
                                                        right: 40,
                                                        bottom: 20),
                                                    decoration: AppDecoration
                                                        .fillGray900
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder12),
                                                    child: Stack(children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgIconapple,
                                                          height: getSize(18),
                                                          width: getSize(18),
                                                          alignment: Alignment
                                                              .centerLeft)
                                                    ]))),
                                            Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: EdgeInsets.all(0),
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        color: ColorConstant
                                                            .gray50066,
                                                        width:
                                                            getHorizontalSize(
                                                                2)),
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder12),
                                                child: Container(
                                                    height: getVerticalSize(58),
                                                    width:
                                                        getHorizontalSize(99),
                                                    padding: getPadding(
                                                        left: 40,
                                                        top: 20,
                                                        right: 40,
                                                        bottom: 20),
                                                    decoration: AppDecoration
                                                        .outlineGray50066
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder12),
                                                    child: Stack(children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgGoogle,
                                                          height: getSize(18),
                                                          width: getSize(18),
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          onTap: () {
                                                            onTapImgGoogle();
                                                          })
                                                    ])))
                                          ])),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: getPadding(top: 21),
                                          child: Text("msg_or_connect_with".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterRegular12))),
                                  Padding(
                                      padding: getPadding(top: 31),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("lbl_email".tr.toUpperCase(),
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterBold12
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                1.0))),
                                            CustomTextFormField(
                                                focusNode: FocusNode(),
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return 'Please enter your email ';
                                                  }
                                                  return null;
                                                },
                                                controller:
                                                    controller.emailController,
                                                hintText:
                                                    "lbl_user_mail_com".tr,
                                                margin: getMargin(top: 12),
                                                textInputType:
                                                    TextInputType.emailAddress,
                                                suffix: Container(
                                                    margin: getMargin(
                                                        left: 30,
                                                        top: 15,
                                                        right: 15,
                                                        bottom: 15),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgTelevision)),
                                                suffixConstraints:
                                                    BoxConstraints(
                                                        maxHeight:
                                                            getVerticalSize(
                                                                48)))
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 20),
                                      child: Text(
                                          "lbl_password".tr.toUpperCase(),
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterBold12
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(1.0)))),
                                  Obx(() => CustomTextFormField(
                                      validator: (value) {
                                        if (value == null ||
                                            value.isEmpty) {
                                          return 'Please enter your password ';
                                        }
                                        return null;
                                      },
                                      focusNode: FocusNode(),
                                      controller: controller.passwordcontroller,
                                      hintText: "lbl_password_123".tr,
                                      margin: getMargin(top: 12),
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      suffix: InkWell(
                                          onTap: () {
                                            controller.isShowPassword.value =
                                                !controller
                                                    .isShowPassword.value;
                                          },
                                          child: Container(
                                              margin: getMargin(
                                                  left: 30,
                                                  top: 12,
                                                  right: 12,
                                                  bottom: 12),
                                              child: CustomImageView(
                                                  svgPath: controller
                                                          .isShowPassword.value
                                                      ? ImageConstant.imgEye
                                                      : ImageConstant.imgEye))),
                                      suffixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(48)),
                                      isObscureText:
                                          controller.isShowPassword.value)),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                          padding: getPadding(top: 21),
                                          child: Text("msg_forgot_password".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterRegular14))),
                                  CustomButton(
                                      height: getVerticalSize(58),
                                      text: "lbl_login".tr,
                                      margin: getMargin(top: 19),
                                      variant: ButtonVariant.FillIndigoA200,
                                      shape: ButtonShape.CircleBorder29,
                                      padding: ButtonPadding.PaddingAll19,
                                      fontStyle:
                                          ButtonFontStyle.InterBold14WhiteA700,
                                      onTap: () {

                                        if (_formKey.currentState?.validate() ?? false) {

                                        }
                                        onTapLogin();
                                      }),
                                  CustomButton(
                                      height: getVerticalSize(58),
                                      text: "msg_create_an_accou".tr,
                                      margin: getMargin(top: 18, bottom: 16),
                                      variant: ButtonVariant.OutlineGray50066,
                                      shape: ButtonShape.CircleBorder29,
                                      padding: ButtonPadding.PaddingAll19,
                                      fontStyle:
                                          ButtonFontStyle.InterBold14Gray900_1,
                                      onTap: () {
                                        onTapCreateanaccountOne();
                                      })
                                ])))
                  ])),
            )));
  }

  onTapImgFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapImgGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapLogin() {
    controller.loginWithUser();
  }

  onTapCreateanaccountOne() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }
}
