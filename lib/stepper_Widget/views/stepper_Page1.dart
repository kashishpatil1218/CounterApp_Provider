import 'package:adv_provider/stepper_Widget/utils/global.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/strepper_Provider.dart';

class StepperPage1 extends StatefulWidget {
  const StepperPage1({super.key});

  @override
  State<StepperPage1> createState() => _StepperPage1State();
}

class _StepperPage1State extends State<StepperPage1> {
  int _activeStepIndex = 0;

  List<Step> stepList(BuildeContext) => [
        Step(
          state: _activeStepIndex <= 0 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex >= 0,
          title: const Text('Personal'),
          content: Container(
            child: Column(
              children: [
                TextFormField(
                  controller: account,
                  decoration: InputDecoration(
                    prefix: Icon(Icons.email,color: Colors.grey.shade700,),
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
        Step(
          state: _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex >= 1,
          title: const Text('Contact'),
          content: Container(
            child: Column(
              children: [
                TextFormField(
                  controller: address,
                  maxLines: 4,
                  decoration: InputDecoration(
                    prefix: Icon(Icons.home,color: Colors.grey.shade700,),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    labelText: 'Address',
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
      Step(
          state: StepState.complete,
          isActive: _activeStepIndex >=2,
          title: Text("Upload"),
          content: Column(
            children: [
              TextFormField(
                controller: number,

                decoration: InputDecoration(

                  prefix: Icon(Icons.phone,color: Colors.grey,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  labelText: 'Mobile Number',

                ),
              ),
              SizedBox(height: 10,),
              Container(

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Email : ${account.text}"),
                    Text("Address : ${address.text}"),
                    Text("Mobile Number : ${number.text}"),


                  ],
                ),
              ),
            ],
          ))
      ];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<StepperProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Flutter steppr demo',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Stepper(
        type: StepperType.horizontal,
        currentStep: _activeStepIndex,
        steps: stepList(context),
        onStepContinue:provider.nextStep,
        onStepCancel: provider.prevoiusSterp,


      ),
    );
  }
}
