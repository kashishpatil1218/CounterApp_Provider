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

import 'package:adv_provider/utils/colours.dart';
import 'package:flutter/material.dart';

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
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return TaskWidget();
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: primary,
              thickness: 1.5,
            );
          },
          itemCount: 5),
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
    return Dialog(
      backgroundColor: secondary,
      child: SizedBox(
        height: sh * 0.6,
        width: sw * 0.8,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: sw * 0.05, vertical: sh * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Add Task',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Create your daily Task',
                style: TextStyle(color: textBlue),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter  a Task",
                  hintStyle: TextStyle(color:Colors.white ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      title: Text(
        'Doctor Chek Up',
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        "Tommorow 3:30 PM",
        style: TextStyle(color: textBlue),
      ),
    );
  }
}
