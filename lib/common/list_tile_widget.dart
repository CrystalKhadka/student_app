import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    super.key,
    required this.fname,
    required this.lname,
    required this.time,
    required this.imageName,
  });

  final String fname;
  final String lname;
  final String time;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Wrap(
        crossAxisAlignment: WrapCrossAlignment.end,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/leading/$imageName',
            ),
            radius: 30,
          ),
          const Icon(Icons.add),
        ],
      ),
      title: Text('$fname $lname '),
      subtitle: Text('$time ago'),
      trailing: Wrap(
        spacing: 8,
        children: [
          Image.asset(
            'assets/images/trailing/$imageName',
            height: 50,
          )
        ],
      ),
      onTap: () {},
    );
  }
}
