import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';
import 'package:oldemy/widgets/app_bar/appbar_title_button_two.dart';
import 'package:oldemy/widgets/app_bar/custom_app_bar.dart';
import 'package:oldemy/widgets/custom_elevated_button.dart';
import 'package:oldemy/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LightCourseDetailScreen extends StatelessWidget {
  LightCourseDetailScreen({Key? key}) : super(key: key);

  TextEditingController showmoreEditTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 44.v),
                      Padding(
                          padding: EdgeInsets.only(left: 44.h),
                          child: Row(children: [
                            Opacity(
                                opacity: 0.3,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgOfferIndigo50,
                                    height: 47.adaptSize,
                                    width: 47.adaptSize)),
                            Opacity(
                                opacity: 0.3,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgOfferIndigo50,
                                    height: 47.adaptSize,
                                    width: 47.adaptSize,
                                    margin: EdgeInsets.only(left: 18.h)))
                          ])),
                      SizedBox(height: 42.v),
                      Padding(
                          padding: EdgeInsets.only(left: 44.h),
                          child: Text("Introduction to DS",
                              style: theme.textTheme.headlineSmall)),
                      SizedBox(height: 47.v),
                      Padding(
                          padding: EdgeInsets.only(left: 44.h),
                          child: Row(children: [
                            _buildBasicButton(context),
                            _buildDataScienceButton(context)
                          ])),
                      SizedBox(height: 44.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25.h, vertical: 27.v),
                          decoration: AppDecoration.fillWhiteA70001.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL30),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Description",
                                    style: CustomTextStyles.bodySmall12),
                                SizedBox(height: 11.v),
                                Container(
                                    width: 313.h,
                                    margin: EdgeInsets.only(right: 11.h),
                                    child: Text(
                                        "Merupakan pembelajaran awal bagi para peserta untuk memperkenalkan gambaran umum tentang data science serta\rkaitannya dengan industri.",
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(height: 1.57))),
                                SizedBox(height: 34.v),
                                _buildShowmoreEditText(context),
                                SizedBox(height: 12.v),
                                Text("Author",
                                    style: CustomTextStyles.bodySmall12),
                                SizedBox(height: 14.v),
                                _buildFrameSevenColumn(context),
                                SizedBox(height: 23.v),
                                _buildButton(context)
                              ]))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitleButtonTwo(
            margin: EdgeInsets.only(left: 25.h),
            onTap: () {
              onTapCourseDetailButton(context);
            }));
  }

  /// Section Widget
  Widget _buildBasicButton(BuildContext context) {
    return CustomElevatedButton(
        height: 30.v,
        width: 49.h,
        text: "Basic",
        buttonStyle: CustomButtonStyles.fillIndigo,
        buttonTextStyle: CustomTextStyles.bodySmallPrimary);
  }

  /// Section Widget
  Widget _buildDataScienceButton(BuildContext context) {
    return CustomElevatedButton(
        height: 30.v,
        width: 85.h,
        text: "Data Science",
        margin: EdgeInsets.only(left: 10.h),
        buttonStyle: CustomButtonStyles.fillIndigo,
        buttonTextStyle: CustomTextStyles.bodySmallPrimary);
  }

  /// Section Widget
  Widget _buildShowmoreEditText(BuildContext context) {
    return CustomTextFormField(
        controller: showmoreEditTextController,
        hintText: "Show more",
        hintStyle: CustomTextStyles.bodySmallPrimary12,
        textInputAction: TextInputAction.done,
        borderDecoration: TextFormFieldStyleHelper.underLineOnError,
        filled: false);
  }

  /// Section Widget
  Widget _buildFrameSevenColumn(BuildContext context) {
    return Container(
        width: 325.h,
        padding: EdgeInsets.symmetric(horizontal: 77.h, vertical: 18.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Dhaval Patel", style: theme.textTheme.bodyMedium),
              SizedBox(height: 4.v),
              Padding(
                  padding: EdgeInsets.only(right: 35.h),
                  child: Row(children: [
                    Text("x Courses", style: theme.textTheme.bodySmall),
                    Container(
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        margin:
                            EdgeInsets.only(left: 10.h, top: 5.v, bottom: 5.v),
                        decoration: BoxDecoration(
                            color: theme.colorScheme.onError,
                            borderRadius: BorderRadius.circular(1.h))),
                    Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text("x.xxx Students",
                            style: theme.textTheme.bodySmall))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildComingSoonButton(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            text: "Coming Soon", margin: EdgeInsets.only(right: 10.h)));
  }

  /// Section Widget
  Widget _buildStartButton(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            text: "Start",
            margin: EdgeInsets.only(left: 10.h),
            buttonStyle: CustomButtonStyles.fillGreen,
            onPressed: () {
              onTapStartButton(context);
            }));
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      _buildComingSoonButton(context),
      _buildStartButton(context)
    ]);
  }

  /// Navigates to the lightDashboardContainerScreen when the action is triggered.
  onTapCourseDetailButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lightDashboardContainerScreen);
  }

  /// Navigates to the lightCoursePlaylistTabContainerScreen when the action is triggered.
  onTapStartButton(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.lightCoursePlaylistTabContainerScreen);
  }
}
