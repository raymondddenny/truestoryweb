import 'dart:convert';
import 'dart:io';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:true_story/constants/colors.dart';
import 'package:true_story/pages/landing_page_desktop.dart';
import 'package:true_story/pages/landing_page_mobile.dart';
import 'package:true_story/secrets/secrets.dart';

void main() async {
  const env = Env("EKUDetydsmQO8qhtyB5pf539L5/pPtMW/7TuNeAMqaw=", "NBnl1xGn52Tgwnn2/H2ppg==");

  debugPrint("env.firebaseApiKey: ${env.firebaseApiKey}");
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: env.firebaseApiKey,
    authDomain: "true-story-web.firebaseapp.com",
    projectId: "true-story-web",
    storageBucket: "true-story-web.appspot.com",
    messagingSenderId: "99006148684",
    appId: "1:99006148684:web:e933187e0867b005d144e9",
  ));
  await FirebaseAppCheck.instance.activate(
    webRecaptchaSiteKey: '6Lecr7gnAAAAANePlsuh8onYYNyiKOyI8oOJ8r7y',
    // Default provider for Android is the Play Integrity provider. You can use the "AndroidProvider" enum to choose
    // your preferred provider. Choose from:
    // 1. Debug provider
    // 2. Safety Net provider
    // 3. Play Integrity provider
    androidProvider: AndroidProvider.debug,
    // Default provider for iOS/macOS is the Device Check provider. You can use the "AppleProvider" enum to choose
    // your preferred provider. Choose from:
    // 1. Debug provider
    // 2. Device Check provider
    // 3. App Attest provider
    // 4. App Attest provider with fallback to Device Check provider (App Attest provider is only available on iOS 14.0+, macOS 14.0+)
    appleProvider: AppleProvider.appAttest,
  );

  // re get the token

  await FirebaseAppCheck.instance.setTokenAutoRefreshEnabled(true);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'True Story',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorConstants.primaryColor),
        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
          duration: 500,
          splash: Image.asset('assets/images/logo.png'),
          nextScreen: const ResponsiveLayout(),
          splashTransition: SplashTransition.slideTransition,
          backgroundColor: ColorConstants.primaryColor),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 768) {
          // Desktop layout
          return const Center(
            child: SizedBox(
              width: 414, // iPhone 14 Pro Max width
              child: YourDesktopContent(),
            ),
          );
        } else {
          // Mobile layout
          return const YourMobileContent();
        }
      },
    );
  }
}

class YourDesktopContent extends StatelessWidget {
  const YourDesktopContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const LandingPageDekstop(
        // Your content for desktop here
        );
  }
}

class YourMobileContent extends StatelessWidget {
  const YourMobileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const LandingPageMobile(
        // Your content for mobile here
        );
  }
}
