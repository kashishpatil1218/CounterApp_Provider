import 'package:adv_provider/provider/homepage_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Counter App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text(
         Provider.of<HomeProvider>(context,listen: true).counter.toString(),
          style: TextStyle(
              fontSize:75, color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {
            Provider.of<HomeProvider>(context,listen: false).addition();
          },child: Icon(Icons.add),),
          SizedBox(height: 10,),
          FloatingActionButton(onPressed: () {
           if (Provider.of<HomeProvider>(context,listen: false).counter>0)
             {
                Provider.of<HomeProvider>(context , listen: false).decrement();
             }
          },child: Icon(Icons.remove),)
        ],
      ),
    );
  }
}
