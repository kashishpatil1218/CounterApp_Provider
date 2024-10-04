# ADV_Counter app using Provider

# State Managment
State management in Flutter refers to how you handle and maintain the state of the app, such as user inputs, data changes, or any other dynamic values that affect how your app looks and behaves. When you modify state, the app needs to react and update the UI accordingly. The Provider package is a common and efficient way to handle state management in Flutter.

# Provider
**Provider** is a Flutter package that allows state to be shared efficiently across widgets without having to pass data down through the widget tree manually. It simplifies state management by allowing widgets to listen to changes in the state and automatically update the UI when those changes occur

-------------------------------------------------------------------------------------------
 **ChangeNotifier**: 
   - This is a class that notifies its listeners (i.e., UI widgets) when there’s a change in the state. Your state classes typically extend `ChangeNotifier`.
   - It contains methods like `notifyListeners()`, which triggers UI updates when called.

 **ChangeNotifierProvider**:
   - A special widget that provides an instance of a `ChangeNotifier` to its descendants. This makes the state accessible throughout the widget tree.
   


4. **Provider.of / context.read / context.watch**:
   - `Provider.of` allows you to retrieve the provider state directly.
   - `context.watch` listens for changes in the state and rebuilds when it changes.
   - `context.read` is used to access the provider state without listening for updates.

1. **Create a State Class**:
   Define a class to manage the app's state. This class should extend `ChangeNotifier` so it can notify its listeners (UI components) when the state changes.

   ```dart
   class CounterProvider with ChangeNotifier {
     int _count = 0;
     int get count => _count;

     void increment() {
       _count++;
       notifyListeners();  // Notify UI of the change
     }
   }
   ```

2. **Wrap Your App with ChangeNotifierProvider**:
   Provide the state (e.g., `CounterProvider`) to your app using `ChangeNotifierProvider`. This will make the state accessible throughout the app.

   ```dart
   ChangeNotifierProvider(
     create: (context) => CounterProvider(),
     child: MyApp(),
   );
   ```

3. **Access and Modify the State**:
   Use `Consumer`, `Provider.of`, or `context.read` in the widget tree to access and interact with the provider state.

   ```dart
   class CounterView extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         floatingActionButton: FloatingActionButton(
           onPressed: () => context.read<CounterProvider>().increment(),
           child: Icon(Icons.add),
        ),
           );
         ),
       );
     }
   }
   ```
   <div>
     <img src="https://github.com/user-attachments/assets/06401d29-4c56-4701-9ab1-d6d10429c0d6"height=500px>
   </div>
    
https://github.com/user-attachments/assets/743e74d5-a536-4710-93f9-052f32ead647

