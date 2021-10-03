import 'package:flutter/material.dart';

//Pages
import 'package:manfood/src/feature/presentation/welcome_page/View/welcome_page.dart';
import 'package:manfood/src/feature/presentation/tabs/tabs_page/View/tabs_page.dart';
import 'package:manfood/src/feature/presentation/forgot_password/View/forgot_password.dart';
import 'package:manfood/src/feature/presentation/login_page/View/login_page.dart';
import 'package:manfood/src/feature/presentation/sign_up_page/View/sign_up_page.dart';

final routes = <String, WidgetBuilder> {
  'welcome' : (BuildContext context) => WelcomePage(),
  'login' : (BuildContext context) => LoginPage(),
  'forgot-password' : (BuildContext context) => ForgotPassword(),
  'sign-up': (BuildContext context) => SignUpPage(),
  'tabs': (BuildContext context) => TabsPage()
};