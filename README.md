# studyo assesment test

What Library I Use To Completed This

* Firebase_core (Allow Connection Multiple Firebase Apps)
* Getx (State Management)
* flutter_svg (Load Svg Image)
* cloud_firestore (Management CRUD to Firebase Firestore)

## How I Completed Assesment Test From Studyo

1. Setup firebase to flutter

   To integrate Firebase into Flutter, I followed the official Firebase documentation [[https://firebase.google.com/docs/flutter/setup]()]. This documentation guides me through using the FlutterFire CLI for configuration and implementing the firebase_core and cloud_firestore libraries to enable communication with Firebase Cloud services.
2. What im do use ai chatgpt

   i use chatgpt for learn state management Getx and implementation to code, which is in here i learn some Getx like in folder binding thats dependecy injection and im use rx type. for change some interactive design in this case i use Obx feature this is my first time use Getx.
3. Structure Project

   For project structures implementing Getx State management, I asked ChatGPT, which provided a recommendation for a project structure like this:

   ```
   lib/
   ├── bindings/
   │   └── initial_bindings.dart
   ├── controllers/
   │   └── some_controllers_getx.dart
   ├── routes/
   │   └── app_routes.dart
   ├── services/
   │   └── some_firebase_logic.dart
   ├── utils/
   ├── views/
   │   ├── page/
   │   └── widgets/
   ├── main.dart
   └── firebase_options.dart

   ```

Explanation :

* **lib/bindings/initial_bindings.dart** : This file is used to define all dependencies that will be initialized when the application is first launched.
* **lib/controllers/some_controllers_getx.dart** : This file contains GetX controllers responsible for managing state and logic for specific UI components.
* **lib/routes/app_routes.dart** : This file contains the definition of application routes using GetX.
* **lib/services/some_firebase_logic.dart** : This file contains logic related to Firebase, such as authentication or database operations.
* **lib/utils/** : This directory can contain various utilities and helper functions used across different parts of the application.
* **lib/views/page/** : This directory contains files related to specific pages or screens within the application.
* **lib/views/widgets/** : This directory contains custom widgets that can be reused across various parts of the application.
* **main.dart** : The main file that serves as the entry point of the Flutter application.
* **firebase_options.dart** : This file contains Firebase configuration for the application.


## Closed

I hope that the test I have completed yields results that meet expectations and align with the requirements outlined in the internship test document. Thank you. - Ifqy Gifha Azhar
