import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Landing Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.landingPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Light - Onboarding - Step One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.lightOnboardingStepOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Light - Onboarding - Step Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.lightOnboardingStepTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Light - Onboarding - Step Three",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.lightOnboardingStepThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Light - Authentication",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.lightAuthenticationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Light - Dashboard - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.lightDashboardContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Light - Courses Cart One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.lightCoursesCartOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Light - Courses Cart Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.lightCoursesCartTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Light - Quiz Result",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.lightQuizResultScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Light - Quiz",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.lightQuizScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Light - Course Playlist - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.lightCoursePlaylistTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Light - Course Detail",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.lightCourseDetailScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
