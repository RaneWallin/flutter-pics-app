// I need to import a helper library from flutter
import 'package:flutter/material.dart';
import 'src/app.dart';

/// Entry point of application.
void main() {
  StatefulWidget app = new App();

  /// Runs instance of [App] in application
  runApp(app);
} // End main
