import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trial/screens/auth.dart';
//import 'package:trial/screens/home.dart';
//import 'package:trial/screens/tabs.dart';
//import 'package:trial/screens/tabs.dart';

ColorScheme kDarkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 2, 23, 80),
);
ColorScheme kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 29, 68, 113),
);

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
          theme: ThemeData.light().copyWith(
            colorScheme: kColorScheme,
          ),
          darkTheme: ThemeData.dark().copyWith(
            colorScheme: kDarkColorScheme,
          ),
          themeMode: ThemeMode.light,
          home: AuthenticationPage()),
    ),
  );
}
