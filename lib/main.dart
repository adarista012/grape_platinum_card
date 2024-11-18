import 'package:flutter/material.dart';
import 'package:grape_platinum_card/app/app.dart';
import 'package:grape_platinum_card/inject_dependencies.dart';

void main() async {
  await injectDependencies();
  runApp(const App());
}
