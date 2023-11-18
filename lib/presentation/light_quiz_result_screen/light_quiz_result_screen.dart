import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';
import 'package:oldemy/widgets/custom_elevated_button.dart';
import 'package:oldemy/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LightQuizResultScreen extends StatelessWidget {
  LightQuizResultScreen({Key? key}) : super(key: key);

  TextEditingController cardPreBuild1Controller = TextEditingController();

  TextEditingController cardPreBuild2Controller = TextEditingController();

  TextEditingController cardPreBuild3Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 83.v),
                  Container(
                      decoration: AppDecoration.outlineSecondaryContainer,
                      child: Text("Your Score is",
                          style: CustomTextStyles.headlineSmallRegular)),
                  SizedBox(height: 12.v),
                  Container(
                      decoration: AppDecoration.outlineSecondaryContainer,
                      child: Text("80", style: theme.textTheme.displayMedium)),
                  SizedBox(height: 76.v),
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25.h, vertical: 19.v),
                          decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL30),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 4.v),
                                Container(
                                    decoration:
                                        AppDecoration.outlineSecondaryContainer,
                                    child: Text("Scoreboard",
                                        style: CustomTextStyles
                                            .headlineSmallOnPrimaryRegular)),
                                SizedBox(height: 12.v),
                                _buildCardCardSeparator(context),
                                SizedBox(height: 12.v),
                                _buildCardPreBuild1(context),
                                SizedBox(height: 12.v),
                                _buildCardPreBuild2(context),
                                SizedBox(height: 12.v),
                                _buildCardPreBuild3(context),
                                Spacer(),
                                _buildBackToMainMenu(context)
                              ])))
                ]))));
  }

  /// Section Widget
  Widget _buildCardCardSeparator(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 4.h, right: 3.h),
        decoration: AppDecoration.fillSecondaryContainer,
        child:
            Opacity(opacity: 0.3, child: Divider(color: appTheme.gray90075)));
  }

  /// Section Widget
  Widget _buildCardPreBuild1(BuildContext context) {
    return CustomTextFormField(
        controller: cardPreBuild1Controller, hintText: "Coming Soon");
  }

  /// Section Widget
  Widget _buildCardPreBuild2(BuildContext context) {
    return CustomTextFormField(
        controller: cardPreBuild2Controller, hintText: "Coming Soon");
  }

  /// Section Widget
  Widget _buildCardPreBuild3(BuildContext context) {
    return CustomTextFormField(
        controller: cardPreBuild3Controller,
        hintText: "Coming Soon",
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildBackToMainMenu(BuildContext context) {
    return CustomElevatedButton(
        text: "Back to Main Menu",
        onPressed: () {
          onTapBackToMainMenu(context);
        });
  }

  /// Navigates to the lightDashboardContainerScreen when the action is triggered.
  onTapBackToMainMenu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lightDashboardContainerScreen);
  }
}
