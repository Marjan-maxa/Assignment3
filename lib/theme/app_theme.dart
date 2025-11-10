import 'package:flutter/material.dart';

class AppTheme{
  static ThemeData light= ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.pink,
      primarySwatch: Colors.pink,

      // scaffoldBackgroundColor: Colors.grey,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.horizontal(),
              )
          )
      ),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.horizontal()
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey,
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.pink
              )
          )
      ),
      textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.pink)
      ),
      appBarTheme: AppBarTheme(
          centerTitle: true ,
          backgroundColor: Colors.teal,
          foregroundColor: Colors.green,
          titleTextStyle: TextStyle(fontStyle: FontStyle.italic,fontSize: 25,fontWeight: FontWeight.bold,color: Colors.purple)
      )
  );
  static ThemeData derk= ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.pink,
      primarySwatch: Colors.pink,
      // scaffoldBackgroundColor: Colors.grey,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.tealAccent,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.horizontal(),
              )
          )
      ),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.horizontal()
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.orange,
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.blue
              )
          )
      ),
      textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blue)
      ),
      appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.pink,
          foregroundColor: Colors.green,
          titleTextStyle: TextStyle(fontStyle: FontStyle.italic,fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)
      )
  );
}