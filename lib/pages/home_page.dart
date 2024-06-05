import 'package:flutter/material.dart';
import 'package:myapp/services/todo_service.dart';

import '../widgets/todo_item_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final service = TodoService();
    final itemsFuture = service.getItems();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('To Do App'),
      ),
      body: FutureBuilder(
          future: itemsFuture,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView(
                children: snapshot.data!.map((item) {
                  return TodoItemWidget(title: item.title);
                }).toList(),
              );
            }

            if (snapshot.hasError) {
              return const Text('Error');
            }

            return Center(child: const CircularProgressIndicator());
          }),
    );
  }
}
