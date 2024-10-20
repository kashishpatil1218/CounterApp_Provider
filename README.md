# adv_provider
                                      Here’s a concise `README.md` for a **Stepper Widget** in Flutter:

---

# Stepper Widget in Flutter



## 🚀 Features

- **Multi-Step Navigation** (Linear/Non-Linear)  
- **Form Validation** at each step  
- **Custom Controls** (Next, Back, Cancel)  
- **Responsive UI** for mobile and web  

## ✨ Usage Example

```dart
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const StepperDemo(),
    );
  }
}

class StepperDemo extends StatefulWidget {
  const StepperDemo({super.key});

  @override
  State<StepperDemo> createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;

  List<Step> _getSteps() => [
        Step(title: const Text('Step 1'), content: const TextField(), isActive: true),
        Step(title: const Text('Step 2'), content: const TextField(), isActive: true),
        Step(title: const Text('Step 3'), content: const Text('Review & Submit')),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stepper Widget')),
      body: Stepper(
        currentStep: _currentStep,
        steps: _getSteps(),
        onStepContinue: () {
          if (_currentStep < _getSteps().length - 1) {
            setState(() => _currentStep += 1);
          }
        },
        onStepCancel: () {
          if (_currentStep > 0) setState(() => _currentStep -= 1);
        },
      ),
    );
  }
}
```

## 📂 Project Structure

```
/lib
│── main.dart               // Entry point
│── stepper_demo.dart        // Stepper implementation
```
## ScreenShort 📷

<div>
  <img src="https://github.com/user-attachments/assets/20064f11-ec80-4abb-9f12-0402f1ad956c"height=500px>
  <img src="https://github.com/user-attachments/assets/f2f58983-c494-451c-9606-0e09b102a71c"height=500px>
  <img src="https://github.com/user-attachments/assets/8e8157ef-a8e8-4900-9b9e-70566da2ede4"height=500px>
  <img src="https://github.com/user-attachments/assets/9a8affd8-551b-487a-ac6a-b193c3c4055f"height=500px>

</div>



https://github.com/user-attachments/assets/af96370d-5efd-453e-9372-8da94be6c43c


