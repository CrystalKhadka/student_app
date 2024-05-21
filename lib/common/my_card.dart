import 'package:flutter/material.dart';

import '../model/student.dart';



class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.student,
  });

  final Student student;

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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text('Name: ${student.fname}'),
                    Text('Age: ${student.age}'),
                  ],
                ),
                // const Spacer(),
                ElevatedButton(
                    onPressed: () {},
                    child: const Icon(Icons.delete))
              ],
            ),
          ),
        ));
  }
}
