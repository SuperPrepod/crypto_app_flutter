import 'package:flutter/material.dart';

final darkTheme = ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 61, 61, 61),
        primarySwatch:Colors.yellow,
        dividerColor: Colors.white10,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 61, 61, 61),
           centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w700
          )
        ),
        listTileTheme: ListTileThemeData(iconColor: Colors.white),
        textTheme: TextTheme(
          bodyMedium: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),
          labelSmall: TextStyle(color: Colors.white.withOpacity(0.6), fontWeight: FontWeight.w500, fontSize: 18),
        ),
        useMaterial3: true,
      );