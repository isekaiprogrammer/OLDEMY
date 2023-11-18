import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';
import 'package:oldemy/widgets/app_bar/appbar_title_button.dart';
import 'package:oldemy/widgets/app_bar/custom_app_bar.dart';
import 'package:oldemy/widgets/custom_elevated_button.dart';

class LightCoursesCartOneScreen extends StatelessWidget {
  const LightCoursesCartOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 19.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL30,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 10.v),
              _buildCardCardContent(context),
              SizedBox(height: 21.v),
              Divider(
                indent: 5.h,
              ),
              Spacer(),
              Opacity(
                opacity: 0.3,
                child: Divider(
                  color: theme.colorScheme.onError.withOpacity(0.46),
                  indent: 5.h,
                ),
              ),
              SizedBox(height: 21.v),
              _buildTwentyNine(context),
              SizedBox(height: 32.v),
              CustomElevatedButton(
                text: "In Development",
                buttonStyle: CustomButtonStyles.fillGreen,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitleButton(
        margin: EdgeInsets.only(left: 25.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildCardCardContent(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.fillWhiteA70001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 19.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Complete Bundle",
                  style: CustomTextStyles.bodySmallOnPrimary,
                ),
                SizedBox(height: 4.v),
                Text(
                  "IDR 999.000",
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(25.h),
            decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Container(
              height: 23.adaptSize,
              width: 23.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.whiteA700.withOpacity(0.17),
                borderRadius: BorderRadius.circular(
                  11.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyNine(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 6.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Total Items",
            style: CustomTextStyles.labelLargeOnError,
          ),
          Text(
            "IDR 999.000",
            style: theme.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
