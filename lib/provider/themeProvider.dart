import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeData theme= ThemeData.dark();
  ThemeData get Theme => theme;

  void ChangeTheme (){
    final isDark = theme== ThemeData.dark();
    if(isDark){

    theme = ThemeData.light();
    }else{
      theme = ThemeData.dark();
    }
    notifyListeners();
  }
}