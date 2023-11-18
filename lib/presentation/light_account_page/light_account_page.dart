import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';
import 'package:oldemy/widgets/app_bar/appbar_title_button_three.dart';
import 'package:oldemy/widgets/app_bar/custom_app_bar.dart';

class LightAccountPage extends StatelessWidget {
  const LightAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 157.v),
                    child: Column(children: [
                      Text("Account Detail",
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: 119.h,
                              margin: EdgeInsets.only(left: 122.h),
                              decoration:
                                  AppDecoration.outlineSecondaryContainer,
                              child: Text("Coming Soon",
                                  maxLines: null,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyLarge))),
                      SizedBox(height: 16.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25.h, vertical: 24.v),
                          decoration: AppDecoration.fillWhiteA70001.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL30),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Account Settings",
                                    style: theme.textTheme.bodySmall)),
                            SizedBox(height: 13.v),
                            Padding(
                                padding: EdgeInsets.only(right: 9.h),
                                child: _buildFrameThirtyFive(context,
                                    notificationText: "Account Security")),
                            SizedBox(height: 23.v),
                            Padding(
                                padding: EdgeInsets.only(right: 9.h),
                                child: _buildFrameThirtyFive(context,
                                    notificationText:
                                        "Email notification preferences")),
                            SizedBox(height: 23.v),
                            Padding(
                                padding: EdgeInsets.only(right: 9.h),
                                child: _buildFrameThirtyFive(context,
                                    notificationText: "Learning reminders")),
                            SizedBox(height: 37.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Support",
                                    style: theme.textTheme.bodySmall)),
                            SizedBox(height: 21.v),
                            _buildAccountSecurityRow(context),
                            SizedBox(height: 15.v),
                            _buildFrequentlyAskedRow(context),
                            SizedBox(height: 14.v),
                            _buildShareOldemyAppRow(context),
                            SizedBox(height: 14.v)
                          ]))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitleButtonThree(
            margin: EdgeInsets.only(left: 25.h),
            onTap: () {
              onTapAccount(context);
            }));
  }

  /// Section Widget
  Widget _buildAccountSecurityRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 9.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text("Account OLDEMY", style: theme.textTheme.bodyMedium)),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightOnerror,
              height: 20.v,
              width: 21.h)
        ]));
  }

  /// Section Widget
  Widget _buildFrequentlyAskedRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 8.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text("Frequently asked questions",
                  style: theme.textTheme.bodyMedium)),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightOnerror,
              height: 20.v,
              width: 21.h)
        ]));
  }

  /// Section Widget
  Widget _buildShareOldemyAppRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 9.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child:
                  Text("Share OLDEMY app", style: theme.textTheme.bodyMedium)),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightOnerror,
              height: 20.v,
              width: 21.h)
        ]));
  }

  /// Common widget
  Widget _buildFrameThirtyFive(
    BuildContext context, {
    required String notificationText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(notificationText,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: theme.colorScheme.onPrimary))),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRightOnerror,
          height: 20.adaptSize,
          width: 20.adaptSize)
    ]);
  }

  /// Navigates to the lightDashboardContainerScreen when the action is triggered.
  onTapAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lightDashboardContainerScreen);
  }
}
