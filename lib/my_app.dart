import 'package:convertall/pages/convertall_currency_convertor_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // returning MatrialApp widget
    return MaterialApp(
      title: 'ConvertAll Currency Convertor',

      // Defining the home screen of the app
      home: ConvertAllCurrencyConvertorPage(),
    );
  }
}
