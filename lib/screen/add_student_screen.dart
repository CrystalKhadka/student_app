import 'package:flutter/material.dart';
import 'package:student_app/model/box_students.dart';
import 'package:student_app/model/student.dart';

import '../common/my_card.dart';

class AddStudentScreen extends StatefulWidget {
  const AddStudentScreen({super.key});

  @override
  State<AddStudentScreen> createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
  final _gap = const SizedBox(height: 10);

  // final _fnameController = TextEditingController();
  // final _lnameController = TextEditingController();
  // final _cityController = TextEditingController();

  // final cities = [
  //   const DropdownMenuItem(value: 'Kathmandu', child: Text('Kathmandu')),
  //   const DropdownMenuItem(value: 'Bhaktapur', child: Text('Bhaktapur')),
  //   const DropdownMenuItem(value: 'Lalitpur', child: Text('Lalitpur')),
  // ];

  late TextEditingController _fnameController;
  late TextEditingController _lnameController;
  late TextEditingController _ageController;

  @override
  void initState() {
    _fnameController = TextEditingController(text: 'Crystal');
    _lnameController = TextEditingController(text: 'Khadka');
    _ageController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _fnameController.dispose();
    _lnameController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  final _key = GlobalKey<FormState>();

  List<Student> students = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                controller: _fnameController,
                decoration: const InputDecoration(
                  hintText: 'First Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter fname';
                  }
                  return null;
                },
              ),
              _gap,
              TextFormField(
                controller: _lnameController,
                decoration: const InputDecoration(
                  hintText: 'Last Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter lname';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _ageController,
                decoration: const InputDecoration(
                  hintText: 'Age',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter age';
                  }
                  return null;
                },
              ),
              _gap,
              _gap,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      setState(() {
                        final student = Student(
                          fname: _fnameController.text,
                          lname: _lnameController.text,
                          age: int.parse(_ageController.text),
                        );
                        boxStudents.add(student);
                      });
                    }
                  },
                  child: const Text('Add Student'),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      boxStudents.clear();
                    });
                  },
                  child: const Text('Delete All Student'),
                ),
              ),
              _gap,
              const Text(
                'Student List',
                style: TextStyle(fontSize: 20),
              ),
              _gap,
              boxStudents.isEmpty
                  ? const Text('No data')
                  : Expanded(
                      child: ListView.separated(
                        separatorBuilder: (context, index) => const Divider(),
                        itemCount: boxStudents.length,
                        itemBuilder: (context, index) {
                          Student student = boxStudents.getAt(index);
                          return MyCard(student: student);
                        },
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
