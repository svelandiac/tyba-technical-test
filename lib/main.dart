import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'config/environments.dart';
import 'firebase_options.dart';
import 'presentation/root.dart';
import 'repositories/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  DependencyInjection().dependencies(Environment.dev);
  runApp(const MaterialApp(home: Root(),));

}

