import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:student_app/app/app.dart';
import 'package:student_app/model/student.dart';

import 'model/box_students.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(StudentAdapter());
  boxStudents = await Hive.openBox<Student>('studentBox');

  runApp(const App());
}
