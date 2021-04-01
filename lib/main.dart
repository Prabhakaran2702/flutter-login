import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_winsoft/ui/home.dart';
import 'package:flutter_login_winsoft/ui/signin.dart';
import 'package:flutter_login_winsoft/ui/signup.dart';
import 'constants/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login",
      theme: ThemeData(primaryColor: Colors.orange[200]),
      routes: <String, WidgetBuilder>{
        SIGN_IN: (BuildContext context) =>  SignInPage(),
        SIGN_UP: (BuildContext context) =>  SignUpScreen(),
        HOME: (BuildContext context) =>  HomeScreen(),
      },
      initialRoute: SIGN_IN,
    );
  }
}


