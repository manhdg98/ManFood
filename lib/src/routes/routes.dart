import 'package:flutter/material.dart';
import 'package:manfood/src/pages/forgot_password.dart';
import 'package:manfood/src/pages/login_page.dart';

//Pages
import 'package:manfood/src/pages/welcome_page.dart';

final routes = <String, WidgetBuilder> {
  'welcome' : (BuildContext context) => WelcomePage(),
  'login' : (BuildContext context) => LoginPage(),
  'forgot-password' : (BuildContext context) => ForgotPassword()
};