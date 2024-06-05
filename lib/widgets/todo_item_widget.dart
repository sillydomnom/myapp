import 'package:flutter/material.dart';
import 'package:myapp/pages/item_details_page.dart';

class TodoItemWidget extends StatelessWidget {
  final String title;

  const TodoItemWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.search),
      title: Text(
        title,
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ItemDetailsPage(),
          ),
        );
      },
    );
  }
}
