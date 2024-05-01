import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    super.key,
    required this.fname,
    required this.lname,
    required this.address,
  });

  final String fname;
  final String lname;
  final String address;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.abc),
      title: Text('$fname $lname '),
      subtitle: Text(address),
      trailing: Wrap(
        spacing: 8,
        children: [
          IconButton(
              onPressed: () {
                debugPrint("Pressed edit");
              },
              icon: const Icon(Icons.edit)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
        ],
      ),
      onTap: () {},
    );
  }
}
