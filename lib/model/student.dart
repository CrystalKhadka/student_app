import 'package:hive/hive.dart';

part 'student.g.dart';

@HiveType(typeId: 1)
class Student {
  @HiveField(0)
  final String fname;

  @HiveField(1)
  final String lname;

  @HiveField(2)
  final int age;

  Student({
    required this.fname,
    required this.lname,
    required this.age,
  });
}
