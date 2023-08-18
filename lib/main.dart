import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:true_story/constants/colors.dart';
import 'package:true_story/pages/landing_page_desktop.dart';
import 'package:true_story/pages/landing_page_mobile.dart';

void main() {
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
