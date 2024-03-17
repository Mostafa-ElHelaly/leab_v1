import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:leap/features/auth/presentation/forget%20password/change_password.dart';
import 'package:leap/features/auth/presentation/forget%20password/forget_password.dart';
import 'package:leap/features/auth/presentation/forget%20password/send_otp_code.dart';
import 'package:leap/features/auth/presentation/login_screen.dart';
import 'package:leap/features/auth/presentation/signup/sign_up.dart';
import 'package:leap/features/auth_web/presentation/forget_password_web/change_password_web.dart';
import 'package:leap/features/auth_web/presentation/forget_password_web/forget_password_web.dart';
import 'package:leap/features/auth_web/presentation/forget_password_web/send_otp_code_web.dart';
import 'package:leap/features/auth_web/presentation/login_screen_web.dart';
import 'package:leap/features/auth_web/presentation/signup_web/sign_up_web.dart';
import 'package:leap/features/home/home_screen/main_screen.dart';
import 'package:leap/features/home_screen_web/presentation/home_screen_web.dart';
import 'package:leap/features/internships_screen_web/internships_screen_web.dart';

class Routes {
  static const String login = "/login";
  static const String home = "/home";
  static const String signUp = "/signUp";
  static const String forgetPassword = "/forgetPassword";
  static const String sendOTPCode = "/sendOTPCode";
  static const String changePassword = "/changePassword";
  static const String internships = "/internships";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        if (Platform.isWindows) {
          return MaterialPageRoute(builder: (_) => const HomeScreenWeb());
        } else {
          return MaterialPageRoute(builder: (_) => const MainScreen());
        }
      case Routes.login:
        if (kIsWeb) {
          return MaterialPageRoute(builder: (_) => const LoginScreenWeb());
        } else {
          return MaterialPageRoute(builder: (_) => const LoginScreen());
        }
      case Routes.signUp:
        if (kIsWeb) {
          return MaterialPageRoute(builder: (_) => const SignUpScreenWeb());
        } else {
          return MaterialPageRoute(builder: (_) => const SignUpScreen());
        }

      case Routes.forgetPassword:
        if (kIsWeb) {
          return MaterialPageRoute(builder: (_) => const ForgetPasswordWeb());
        } else {
          return MaterialPageRoute(builder: (_) => const ForgetPassword());
        }

      case Routes.sendOTPCode:
        if (kIsWeb) {
          return MaterialPageRoute(builder: (_) => const SendOTPCodeWeb());
        } else {
          return MaterialPageRoute(builder: (_) => const SendOTPCode());
        }

      case Routes.changePassword:
        if (kIsWeb) {
          return MaterialPageRoute(builder: (_) => const ChangePasswordWeb());
        } else {
          return MaterialPageRoute(builder: (_) => const ChangePassword());
        }
      case Routes.internships:
        if (kIsWeb) {
          return MaterialPageRoute(
              builder: (_) => const InternshipsScreenWeb());
        } else {
          return MaterialPageRoute(
              builder: (_) => const InternshipsScreenWeb());
        }
    }
    return unDefinedRoute();
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
