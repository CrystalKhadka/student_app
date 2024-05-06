import 'package:flutter/material.dart';

class ViewStudentScreen extends StatelessWidget {
  const ViewStudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Student Details'),
        ),
        body: const Text('data'));
  }
}
