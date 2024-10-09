
import 'dart:math';

import 'package:flutter/material.dart';

import '../modal/todoModal.dart';

class TodoProvider extends ChangeNotifier {
  //enpty list for add the task
  List<TodoModal> todoList = []; //tasks
  //List<TodoModal> get todoList => _todoList;

  String? TodoName;
// tect editing controllers
  final TextEditingController TodoNametxt= TextEditingController();
  final TextEditingController Datetxt = TextEditingController();
  final TextEditingController Timetxt = TextEditingController();


  //for change in ui and add the task name
  void addTodoName(String todoName) {//methode(String? value)
    TodoNametxt.text = todoName;
    notifyListeners();
   }
//for aad the date in txtfeilde
   void addDate(DateTime? date){
    if(date! == null)
      {
        return;
      }
    // for difference in today tommorrow and other day -------------------------
    DateTime currentDate=DateTime.now();
    DateTime now = DateTime(currentDate.year,currentDate.month,currentDate.day);

    int deff = date.difference(now).inDays;
    if(deff==0)
      {
        Datetxt.text='Today';
      }
    else if (deff==1)
      {
        Datetxt.text='Tommorrow';
      }
    else
    {
      Datetxt.text='${date.day}/${date.month}/${date.year}';
    }
    notifyListeners();
   }

   addTime(TimeOfDay? time){
    if(time==null){return;}
    if(time.hour==0)
      {
        Timetxt.text='12:${time.minute} AM';
      }else if(time.hour<12){
      Timetxt.text='${time.hour} : ${time.minute} AM';
    }else if (time.hashCode==12){
      Timetxt.text="${time.hour} : ${time.minute} PM";
    }else
      {
        Timetxt.text="${time.hour-12} : ${time.minute} PM";
      }
    notifyListeners();
   }


//function for add the date and time in txtfeild----enter item store in this function

  void createTODO() {
    if (Datetxt.text.isNotEmpty && Timetxt.text.isNotEmpty) {
      TodoModal newTodo = TodoModal(

        TodoNamee:TodoNametxt .text,
        Date: Datetxt.text,
        Time: Timetxt.text,

      );

      todoList.add(newTodo);
      notifyListeners();
    }
  }

  void romoveData(TodoModal todo)
  {
    todoList.remove(todo);
    notifyListeners();
  }

}

