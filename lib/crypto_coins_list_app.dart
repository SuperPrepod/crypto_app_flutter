import 'package:flutter/material.dart';
import 'router/router.dart';
import 'theme/theme.dart';

class CryptoCurrenciesLisApp extends StatelessWidget {
  const CryptoCurrenciesLisApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CryptoCurrenciesList',
      theme: darkTheme,
      routes: routes,
    );
  }
}