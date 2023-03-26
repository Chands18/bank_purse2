import 'package:bank_purse2/ui/pages/onboarding_page.dart';
import 'package:bank_purse2/ui/pages/sign_in_page.dart';
import 'package:bank_purse2/ui/pages/sign_up_page.dart';
import 'package:bank_purse2/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
      },
    );
  }
}
