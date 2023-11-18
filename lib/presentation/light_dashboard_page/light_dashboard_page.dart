import '../light_dashboard_page/widgets/lightdashboardlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';
import 'package:oldemy/widgets/custom_icon_button.dart';

class LightDashboardPage extends StatelessWidget {
  const LightDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillPrimary,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 29.v),
                      Padding(
                          padding: EdgeInsets.only(left: 85.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Welcome back",
                                    style: CustomTextStyles
                                        .labelMediumWhiteA70001),
                                SizedBox(height: 1.v),
                                Text("User", style: theme.textTheme.titleSmall)
                              ])),
                      SizedBox(height: 29.v),
                      SizedBox(
                          height: 674.v,
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25.h, vertical: 106.v),
                                    decoration: AppDecoration.fillGray.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderTL30),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 3.h),
                                              child: Text("Recommendation",
                                                  style: CustomTextStyles
                                                      .titleSmallOnPrimary)),
                                          SizedBox(height: 13.v),
                                          _buildLightDashboardList(context)
                                        ]))),
                            _buildCardPreBuildColumn(context)
                          ]))
                    ]))));
  }

  /// Section Widget
  Widget _buildLightDashboardList(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 15.v);
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return LightdashboardlistItemWidget();
        });
  }

  /// Section Widget
  Widget _buildCardPreBuildColumn(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: GestureDetector(
            onTap: () {
              onTapCardPreBuildColumn(context);
            },
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 25.h),
                padding: EdgeInsets.all(15.h),
                decoration: AppDecoration.fillWhiteA70001
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Introduction to Data Science",
                                          style: CustomTextStyles
                                              .bodySmallOnPrimary),
                                      SizedBox(height: 6.v),
                                      Text("Free",
                                          style: theme.textTheme.labelLarge)
                                    ])),
                            CustomIconButton(
                                height: 60.adaptSize,
                                width: 60.adaptSize,
                                padding: EdgeInsets.all(17.h),
                                decoration: IconButtonStyleHelper.fillPrimary,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgOffer))
                          ]),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(right: 17.h),
                          child: Row(children: [
                            CustomIconButton(
                                height: 35.adaptSize,
                                width: 35.adaptSize,
                                padding: EdgeInsets.all(7.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgIconsAward)),
                            Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: _buildContent(context,
                                    progressText: "Current Progress",
                                    progressValue: "50%")),
                            Spacer(),
                            CustomIconButton(
                                height: 35.adaptSize,
                                width: 35.adaptSize,
                                padding: EdgeInsets.all(7.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgIconsAward)),
                            Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: _buildContent(context,
                                    progressText: "Current Progress",
                                    progressValue: "50%"))
                          ])),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.only(right: 11.h),
                          child: Container(
                              height: 15.v,
                              width: 284.h,
                              decoration: BoxDecoration(
                                  color: appTheme.gray100,
                                  borderRadius: BorderRadius.circular(7.h)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(7.h),
                                  child: LinearProgressIndicator(
                                      value: 0.17,
                                      backgroundColor: appTheme.gray100,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          appTheme.green300)))))
                    ]))));
  }

  /// Common widget
  Widget _buildContent(
    BuildContext context, {
    required String progressText,
    required String progressValue,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(progressText,
          style: theme.textTheme.bodySmall!
              .copyWith(color: theme.colorScheme.onError)),
      SizedBox(height: 2.v),
      Text(progressValue,
          style: theme.textTheme.bodyMedium!
              .copyWith(color: theme.colorScheme.onPrimary))
    ]);
  }

  /// Navigates to the lightCourseDetailScreen when the action is triggered.
  onTapCardPreBuildColumn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lightCourseDetailScreen);
  }
}
