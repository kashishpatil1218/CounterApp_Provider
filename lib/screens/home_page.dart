// import 'package:adv_provider/provider/homepage_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//         title: const Text(
//           'Counter App',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: Center(
//         child: Text(
//          Provider.of<HomeProvider>(context,listen: true).counter.toString(),
//           style: TextStyle(
//               fontSize:75, color: Colors.black, fontWeight: FontWeight.w500),
//         ),
//       ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton(onPressed: () {
//             Provider.of<HomeProvider>(context,listen: false).addition();
//           },child: Icon(Icons.add),),
//           SizedBox(height: 10,),
//           FloatingActionButton(onPressed: () {
//            if (Provider.of<HomeProvider>(context,listen: false).counter>0)
//              {
//                 Provider.of<HomeProvider>(context , listen: false).decrement();
//              }
//           },child: Icon(Icons.remove),)
//         ],
//       ),
//     );
//   }
// }

import 'package:adv_provider/provider/homepage_provider.dart';
import 'package:adv_provider/utils/colours.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../modal/todoModal.dart';
import '../utils/colours.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondary,
      appBar: AppBar(
        backgroundColor: primary,
        title: const Text(
          "To Do List",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          PopupMenuButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onSelected: (value) {},
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: GestureDetector(onTap: () {}, child: Text("Dark")),
                      value: 1,
                    ),
                    PopupMenuItem(
                      child: Text("light"),
                      value: 2,
                    ),
                  ])
        ],
      ),
      body: Consumer<TodoProvider>(

          builder: (context, TodoProvider, _) {
            return ListView.separated(
                itemBuilder: (context, index) {
                  final task = TodoProvider.todoList[index];
                  return TaskWidget(
                    todo: task,
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: primary,
                    thickness: 1.5,
                  );
                },
                itemCount: TodoProvider.todoList.length);
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return DialogBoxWiidget();
            },
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 5,
      ),
    );
  }
}

class DialogBoxWiidget extends StatelessWidget {
  const DialogBoxWiidget({super.key});

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.sizeOf(context).height;
    double sw = MediaQuery.sizeOf(context).width;
    final todoProvider = Provider.of<TodoProvider>(context, listen: false);
    return Dialog(
      backgroundColor: secondary,
      child: SizedBox(
        height: sh * 0.5,
        width: sw * 0.8,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: sw * 0.05, vertical: sh * 0.02),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Add Task',
                    style: TextStyle(
                        color: primary,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Create your daily Task',
                  style: TextStyle(color: textBlue),
                ),
                SizedBox(
                  height: 10,
                ),
                TexttWidget(
                  controller: todoProvider.TodoNametxt,
                  text: 'Enter a Task',
                  onChanged: (value) {
                    todoProvider.addTodoName(value);
                  },
                  see: false,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Date',
                  style: TextStyle(color: textBlue),
                ),
                TexttWidget(
                  text: 'Select the Date',
                  see: true,
                  icon: Icons.calendar_month,
                  controller: todoProvider.Datetxt,
                  onTap: () async {
                    DateTime? date = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2006),
                        lastDate: DateTime(2030));
                    todoProvider.addDate(date);
                  },
                ),
                SizedBox(height: 10),
                Text(
                  'Time',
                  style: TextStyle(color: textBlue),
                ),
                TexttWidget(
                  text: 'Select the Time',
                  controller: todoProvider.Timetxt,
                  see: true,
                  icon: Icons.access_time,
                  onTap: () async {
                    TimeOfDay? time = await showTimePicker(
                        context: context, initialTime: TimeOfDay.now());
                    todoProvider.addTime(time);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: () {
                      todoProvider.createTODO();
                      if (context.mounted) {
                        Navigator.of(context).pop();
                      }
                    },
                    child: Text(
                      "Add",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TexttWidget extends StatelessWidget {
  const TexttWidget(
      {super.key,
      required this.text,
      this.icon,
      this.onTap,
      this.onChanged,
      required this.controller,
      required this.see});

  final String text;
  final IconData? icon;
  final void Function()? onTap;
  final bool see;
  final void Function(String)? onChanged;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.blueGrey),
      readOnly: see,
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
            onTap: onTap,
            child: Icon(
              icon,
              color: Colors.blueGrey,
            )),
        hintText: text,
        hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key, required this.todo});

  final TodoModal todo;

  @override
  Widget build(BuildContext context) {
    final todoProvider = Provider.of<TodoProvider>(context, listen: false);
    return ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
        title: Text(
          todo.TodoNamee,
          // todo.TodoName,
          style: TextStyle(
              color: primary, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          "${todo.Date},${todo.Time} ",
          style: TextStyle(color: textBlue),
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            todoProvider.romoveData(todo);
          },
        ));
  }
}
