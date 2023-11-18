import '../light_quiz_screen/widgets/lightquiz_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';
import 'package:oldemy/widgets/app_bar/appbar_title_button_one.dart';
import 'package:oldemy/widgets/app_bar/custom_app_bar.dart';
import 'package:oldemy/widgets/custom_elevated_button.dart';

class LightQuizScreen extends StatelessWidget {
  const LightQuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 19.v),
                decoration: AppDecoration.fillGray
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL30),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 5.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: EdgeInsets.only(left: 10.h),
                          decoration: AppDecoration.outlineSecondaryContainer,
                          child: Text("Answer the question correctly!",
                              style: theme.textTheme.bodyMedium))),
                  SizedBox(height: 18.v),
                  _buildLightQuiz(context),
                  SizedBox(height: 172.v),
                  CustomElevatedButton(
                      text: "Submit Answer",
                      buttonStyle: CustomButtonStyles.fillGreen,
                      onPressed: () {
                        onTapSubmitAnswer(context);
                      })
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitleButtonOne(
            margin: EdgeInsets.only(left: 25.h),
            onTap: () {
              onTapQuiz(context);
            }));
  }

  /// Section Widget
  Widget _buildLightQuiz(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 18.v);
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return LightquizItemWidget();
            }));
  }

  /// Navigates to the lightDashboardContainerScreen when the action is triggered.
  onTapQuiz(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lightDashboardContainerScreen);
  }

  /// Navigates to the lightQuizResultScreen when the action is triggered.
  onTapSubmitAnswer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lightQuizResultScreen);
  }
}
