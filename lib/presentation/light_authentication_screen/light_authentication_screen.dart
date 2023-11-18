import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';
import 'package:oldemy/widgets/custom_elevated_button.dart';
import 'package:oldemy/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LightAuthenticationScreen extends StatelessWidget {
  LightAuthenticationScreen({Key? key}) : super(key: key);

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        child: SizedBox(
                            height: 768.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Opacity(
                                      opacity: 0.6,
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgEllipse12,
                                          height: 768.v,
                                          width: 375.h,
                                          alignment: Alignment.center)),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          height: 672.v,
                                          width: double.maxFinite,
                                          margin: EdgeInsets.only(top: 33.v),
                                          child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                Opacity(
                                                    opacity: 0.6,
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse22,
                                                        height: 672.v,
                                                        width: 375.h,
                                                        alignment:
                                                            Alignment.center)),
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 62.h,
                                                                top: 147.v,
                                                                right: 62.h),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Text(
                                                                  "OLDEMY ACADEMY",
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyLarge),
                                                              SizedBox(
                                                                  height: 21.v),
                                                              Text(
                                                                  "Belajar Data Science Lebih Mudah",
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyLarge)
                                                            ])))
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 25.h, vertical: 43.v),
                                          decoration: AppDecoration.fillGray
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderTL30),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                _buildEmailField(context),
                                                SizedBox(height: 20.v),
                                                _buildPasswordField(context),
                                                SizedBox(height: 20.v),
                                                _buildLoginButton(context),
                                                SizedBox(height: 20.v),
                                                _buildSignupButton(context),
                                                SizedBox(height: 55.v),
                                                Text("OLDEMY",
                                                    style: CustomTextStyles
                                                        .bodySmall12),
                                                SizedBox(height: 12.v)
                                              ])))
                                ])))))));
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return CustomTextFormField(
        controller: emailFieldController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(15.h, 15.v, 10.h, 15.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgMailPrimary,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 50.v),
        contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v),
        borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
        fillColor: appTheme.whiteA70001);
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return CustomTextFormField(
        controller: passwordFieldController,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(15.h, 15.v, 10.h, 15.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconsLockPrimary,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 50.v),
        obscureText: true,
        contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v),
        borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
        fillColor: appTheme.whiteA70001);
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Log In",
        onPressed: () {
          onTapLoginButton(context);
        });
  }

  /// Section Widget
  Widget _buildSignupButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Sign Up",
        buttonStyle: CustomButtonStyles.fillOnPrimaryContainer);
  }

  /// Navigates to the lightDashboardContainerScreen when the action is triggered.
  onTapLoginButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lightDashboardContainerScreen);
  }
}
