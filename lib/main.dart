import 'package:flutter/material.dart';
import 'package:stevedoring/shared/theme.dart';
import 'package:stevedoring/ui/pages/add_daily_report_page.dart';
import 'package:stevedoring/ui/pages/barge/barge_progress_page.dart';
import 'package:stevedoring/ui/pages/daily_report_list_page.dart';
import 'package:stevedoring/ui/pages/timesheet/detail_timesheet_page.dart';
import 'package:stevedoring/ui/pages/auth/forgot_password_page.dart';
import 'package:stevedoring/ui/pages/timesheet/form_add_timesheet_page.dart';
import 'package:stevedoring/ui/pages/timesheet/form_edit_timesheet_page.dart';
import 'package:stevedoring/ui/pages/home_page.dart';
import 'package:stevedoring/ui/pages/auth/sign_in_page.dart';
import 'package:stevedoring/ui/pages/auth/sign_up_page.dart';
import 'package:stevedoring/ui/pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: lightBackgroundColor,
          appBarTheme: AppBarTheme(
            backgroundColor: lightBackgroundColor,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(
              color: blackColor,
            ),
            titleTextStyle: blackTextstyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          )),
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/forgot-password': (context) => const ForgotPasswordPage(),
        '/home': (context) => const HomePage(),
        '/add-timesheet': (context) => const AddTimesheetPage(),
        '/edit-timesheet': (context) => const EditTimesheetPage(),
        '/detail-timesheet': (context) => const DetailTimesheetPage(),
        '/daily-report': (context) => const DailyReportPage(),
        '/add-daily-report': (context) => const AddDailyReportPage(),
      },
    );
  }
}
