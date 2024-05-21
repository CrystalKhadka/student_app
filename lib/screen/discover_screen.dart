import 'package:flutter/material.dart';
import 'package:student_app/common/list_tile_widget.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ListTileWidget> lists = [
      const ListTileWidget(
          fname: 'Crystal',
          lname: 'Khadka',
          time: '2h',
          imageName: 'crystal.jpg'),
      const ListTileWidget(
          fname: 'Rushmit',
          lname: 'Karki',
          time: '4h',
          imageName: 'crystal.jpg'),
      const ListTileWidget(
          fname: 'Crystal',
          lname: 'Khadka',
          time: '8h',
          imageName: 'crystal.jpg'),
      const ListTileWidget(
          fname: 'Crystal',
          lname: 'Khadka',
          time: '10h',
          imageName: 'crystal.jpg'),
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.explore,
                color: Colors.red,
              ),
              SizedBox(
                width: 8,
              ),
              Text("Discover"),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: lists.length,
                  itemBuilder: (context, index) {
                    return lists[index];
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
