// ignore_for_file: prefer_const_constructors

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:google_fonts/google_fonts.dart';
import 'package:market_place_mobile_app/themes/palette.dart';

// Project imports:

class CustomTheme {
  static ThemeData ligthTheme(BuildContext context) {
    final theme = Theme.of(context);
    return ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          accentColor: Palette.green100,
        ),
        fontFamily: 'Montserrat',
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(
              color: Palette.black100,
            ),
            elevation: 0),
        scaffoldBackgroundColor: Palette.white,
        bottomNavigationBarTheme: theme.bottomNavigationBarTheme.copyWith(
            backgroundColor: Palette.white,
            selectedLabelStyle:
                TextStyle(fontWeight: FontWeight.bold, color: Palette.black100),
            unselectedItemColor: Palette.black100.withOpacity(0.8),
            selectedItemColor: Palette.black100,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedIconTheme: IconThemeData(color: Palette.green100),
            unselectedIconTheme: IconThemeData(color: Colors.black38)),
        iconTheme: theme.iconTheme.copyWith(color: Palette.black100),
        textSelectionTheme: theme.textSelectionTheme.copyWith(
            selectionColor: Palette.black100,
            cursorColor: Palette.black100,
            selectionHandleColor: Palette.black100),
        textTheme: GoogleFonts.montserratTextTheme(theme.textTheme.copyWith(
          titleMedium: TextStyle(color: Palette.black100),
          labelLarge: theme.primaryTextTheme.labelLarge
              ?.copyWith(
                  color: Palette.white100,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold)
              .apply(color: Palette.white100),
        )),
        tabBarTheme: TabBarTheme(
            indicatorColor: Palette.green100,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            unselectedLabelStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            labelColor: Palette.green100,
            unselectedLabelColor: Palette.black100.withOpacity(0.5)),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(fontSize: 15.0, color: Colors.black26),
          fillColor: Colors.white,
          filled: true,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
                backgroundColor: Palette.black100,
                disabledBackgroundColor: Palette.black100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))))));
  }
}
