import 'package:flutter/material.dart';
import 'package:student_app/screen/student_details_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StudentDetailsScreen(),
    );
  }
}
