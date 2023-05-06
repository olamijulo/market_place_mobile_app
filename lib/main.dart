import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:market_place_mobile_app/feature/home/home_screen.dart';
import 'package:market_place_mobile_app/themes/custom_theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(480, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: CustomTheme.ligthTheme(context),
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
    );
  }
}
