import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';
import 'package:oldemy/widgets/app_bar/appbar_title_button.dart';
import 'package:oldemy/widgets/app_bar/custom_app_bar.dart';
import 'package:oldemy/widgets/custom_elevated_button.dart';

class LightCoursesCartTwoScreen extends StatelessWidget {
  const LightCoursesCartTwoScreen({Key? key})
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
              SizedBox(height: 13.v),
              _buildCardCardContent(context),
              SizedBox(height: 18.v),
              Divider(
                endIndent: 7.h,
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
              _buildSixtySeven(context),
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
                  "Subscription 1 month",
                  style: CustomTextStyles.bodySmallOnPrimary,
                ),
                SizedBox(height: 4.v),
                Text(
                  "IDR 79.000",
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          Container(
            height: 75.adaptSize,
            width: 75.adaptSize,
            padding: EdgeInsets.all(25.h),
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgOffer,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtySeven(BuildContext context) {
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
            "IDR 79.000",
            style: theme.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
