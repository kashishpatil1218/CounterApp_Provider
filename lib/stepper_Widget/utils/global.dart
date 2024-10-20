import 'package:flutter/material.dart';

TextEditingController account = TextEditingController();
TextEditingController address = TextEditingController();
TextEditingController number = TextEditingController();




// Step(
// state:
// _activeStepIndex <= 2 ? StepState.editing : StepState.complete,
// isActive: _activeStepIndex >= 2,
// title: const Text('Upload'),
// content: Container(
// child: Column(
// children: [
// TextFormField(
// controller: number,
//
// decoration: InputDecoration(
// prefix: Icon(Icons.phone,color: Colors.grey.shade700,),
//
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(10),
// borderSide: BorderSide(
// color: Colors.grey,
// )),
// focusedBorder: OutlineInputBorder(
// borderSide: BorderSide(color: Colors.grey)),
// labelText: '',
// ),
// ),
// SizedBox(
// height: 8,
// ),
// ],
// ),
// ),
//
// ),