import 'package:flutter/material.dart';
import 'package:oldemy/presentation/landing_page_screen/landing_page_screen.dart';
import 'package:oldemy/presentation/light_onboarding_step_one_screen/light_onboarding_step_one_screen.dart';
import 'package:oldemy/presentation/light_onboarding_step_two_screen/light_onboarding_step_two_screen.dart';
import 'package:oldemy/presentation/light_onboarding_step_three_screen/light_onboarding_step_three_screen.dart';
import 'package:oldemy/presentation/light_authentication_screen/light_authentication_screen.dart';
import 'package:oldemy/presentation/light_dashboard_container_screen/light_dashboard_container_screen.dart';
import 'package:oldemy/presentation/light_courses_cart_one_screen/light_courses_cart_one_screen.dart';
import 'package:oldemy/presentation/light_courses_cart_two_screen/light_courses_cart_two_screen.dart';
import 'package:oldemy/presentation/light_quiz_result_screen/light_quiz_result_screen.dart';
import 'package:oldemy/presentation/light_quiz_screen/light_quiz_screen.dart';
import 'package:oldemy/presentation/light_course_playlist_tab_container_screen/light_course_playlist_tab_container_screen.dart';
import 'package:oldemy/presentation/light_course_detail_screen/light_course_detail_screen.dart';
import 'package:oldemy/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String landingPageScreen = '/landing_page_screen';

  static const String lightOnboardingStepOneScreen =
      '/light_onboarding_step_one_screen';

  static const String lightOnboardingStepTwoScreen =
      '/light_onboarding_step_two_screen';

  static const String lightOnboardingStepThreeScreen =
      '/light_onboarding_step_three_screen';

  static const String lightAuthenticationScreen =
      '/light_authentication_screen';

  static const String lightDashboardPage = '/light_dashboard_page';

  static const String lightDashboardContainerScreen =
      '/light_dashboard_container_screen';

  static const String lightCourseResultPage = '/light_course_result_page';

  static const String lightCoursesCartOneScreen =
      '/light_courses_cart_one_screen';

  static const String lightCoursesCartTwoScreen =
      '/light_courses_cart_two_screen';

  static const String lightQuizResultScreen = '/light_quiz_result_screen';

  static const String lightQuizScreen = '/light_quiz_screen';

  static const String lightCoursePlaylistPage = '/light_course_playlist_page';

  static const String lightCoursePlaylistTabContainerScreen =
      '/light_course_playlist_tab_container_screen';

  static const String lightCourseDetailScreen = '/light_course_detail_screen';

  static const String lightAccountPage = '/light_account_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    landingPageScreen: (context) => LandingPageScreen(),
    lightOnboardingStepOneScreen: (context) => LightOnboardingStepOneScreen(),
    lightOnboardingStepTwoScreen: (context) => LightOnboardingStepTwoScreen(),
    lightOnboardingStepThreeScreen: (context) =>
        LightOnboardingStepThreeScreen(),
    lightAuthenticationScreen: (context) => LightAuthenticationScreen(),
    lightDashboardContainerScreen: (context) => LightDashboardContainerScreen(),
    lightCoursesCartOneScreen: (context) => LightCoursesCartOneScreen(),
    lightCoursesCartTwoScreen: (context) => LightCoursesCartTwoScreen(),
    lightQuizResultScreen: (context) => LightQuizResultScreen(),
    lightQuizScreen: (context) => LightQuizScreen(),
    lightCoursePlaylistTabContainerScreen: (context) =>
        LightCoursePlaylistTabContainerScreen(),
    lightCourseDetailScreen: (context) => LightCourseDetailScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
