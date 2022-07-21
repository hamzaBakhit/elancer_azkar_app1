import 'package:elancer_azkar_app/screens/about_app.dart';
import 'package:elancer_azkar_app/screens/azkar_screen.dart';
import 'package:elancer_azkar_app/screens/lunch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      localizationsDelegates:const  [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('ar',),
      ],
      initialRoute: '/lunch_screen',
      routes: {
        '/lunch_screen' : (context)=> LunchScreen(),
        '/azkar_screen' : (context)=> AzkarScreen(),
        '/about_app' : (context)=> AboutApp(),
      },
    );
  }
}

