import 'package:assignment3/Calculator.dart';
import 'package:assignment3/api_calling_core.dart';
import 'package:assignment3/theme/app_theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode themeMode=ThemeMode.light;

  void toggle()
  {
    setState(() {
      themeMode= themeMode==ThemeMode.light ? ThemeMode.dark:ThemeMode.light;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,       // light theme
      darkTheme: AppTheme.derk,    // dark theme
      themeMode: themeMode,
      debugShowCheckedModeBanner: false  ,
      home: cal(toggle: (){toggle();},),
      initialRoute: 'API',
      routes:{
        'API':(context)=>api(),
      },
    );
  }
}
