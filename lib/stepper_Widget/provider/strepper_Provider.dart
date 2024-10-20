import 'package:flutter/material.dart';

class StepperProvider extends ChangeNotifier{
  int _activeStepIndex=0;

  int get activeStepIndex => _activeStepIndex;

  void nextStep(){
    if(_activeStepIndex < 2)
      {
        _activeStepIndex++;
        notifyListeners();
      }
  }

  void prevoiusSterp(){
    if(_activeStepIndex>0)
      {
        _activeStepIndex--;
        notifyListeners();
      }
  }
}