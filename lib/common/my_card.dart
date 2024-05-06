import 'package:flutter/material.dart';

import '../model/student.dart';

class MyCard extends StatelessWidget {
  const MyCard(
      {super.key,
      required this.students,
      required this.index,
      required this.onPressed});

  final List<Student> students;
  final int index;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        width: double.infinity,
        child: Card(
          color: Colors.amber,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                      'First Name: ${students[index].fname} \n Last Name: ${students[index].lname}'),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    onPressed();
                  },
                  child: const Icon(Icons.delete))
            ],
          ),
        ));
  }
}
