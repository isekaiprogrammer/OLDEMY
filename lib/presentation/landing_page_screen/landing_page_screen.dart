import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';

class LandingPageScreen extends StatelessWidget {
  const LandingPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Container(
            height: 803.v,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 63.h,
              vertical: 241.v,
            ),
            decoration: AppDecoration.fillWhiteA,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLandingPageBackground,
                  height: 321.v,
                  width: 249.h,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: 72.h,
                      bottom: 11.v,
                    ),
                    child: Text(
                      "OLDEMY",
                      style: CustomTextStyles.titleLargePoppinsPrimaryContainer,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
