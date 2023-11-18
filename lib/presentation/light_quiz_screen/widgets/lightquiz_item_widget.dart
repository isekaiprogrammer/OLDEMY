import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';

// ignore: must_be_immutable
class LightquizItemWidget extends StatelessWidget {
  const LightquizItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.fillOnError.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Text(
              "_____(“Hello Wolrd”)",
              style: CustomTextStyles.bodySmallOnPrimary,
            ),
          ),
          SizedBox(height: 5.v),
          Text(
            "Answer = ",
            style: theme.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
