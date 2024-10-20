import 'package:flutter/material.dart';


import 'package:adv_provider/stepper_Widget/utils/global.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../provider/strepper_Provider.dart';

class StepperPage2 extends StatefulWidget {
  const StepperPage2({super.key});

  @override
  State<StepperPage2> createState() => _StepperPage2State();
}

class _StepperPage2State extends State<StepperPage2> {
  int _activeStepIndex = 0;

  // Define TextEditingController instances
  final TextEditingController account = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController number = TextEditingController();

  // Update the stepList function to pass the provider instance
  List<Step> stepList(BuildContext context, StepperProvider provider) => [
    Step(
      state: _activeStepIndex <= 0 ? StepState.editing : StepState.complete,
      isActive: provider.activeStepIndex >= 0,
      title: const Text('Personal'),
      content: Column(
        children: [
          TextFormField(
            controller: account,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email,
                color: Colors.grey.shade700,
              ),
              border: const OutlineInputBorder(),
              labelText: 'Email',
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    ),
    Step(
      state: _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
      isActive: provider.activeStepIndex >= 1,
      title: const Text('Contact'),
      content: Column(
        children: [
          TextFormField(
            controller: address,
            maxLines: 4,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.home,
                color: Colors.grey.shade700,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              labelText: 'Address',
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    ),
    Step(
      state: StepState.complete,
      isActive: provider.activeStepIndex >= 2,
      title: const Text("Upload"),
      content: Column(
        children: [
          TextFormField(
            controller: number,
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.phone,
                color: Colors.grey,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              labelText: 'Mobile Number',
            ),
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Email: ${account.text}"),
              Text("Address: ${address.text}"),
              Text("Mobile Number: ${number.text}"),
            ],
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<StepperProvider>(context);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).pushNamed('/page2');
          }, icon: Icon(Icons.navigate_next_outlined,color: Colors.white,))
        ],
        centerTitle: true,
        title: const Text(
          'Flutter Stepper Demo',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Stepper(
        type: StepperType.vertical,
        currentStep: provider.activeStepIndex,
        steps: stepList(context, provider),
        onStepContinue: provider.nextStep,
        onStepCancel: provider.prevoiusSterp,
      ),

    );
  }
}
