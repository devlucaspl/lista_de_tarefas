import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../models/todo.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({Key? key, required this.todo}) : super(key: key);

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Slidable(child: Container(
      margin: const EdgeInsets.symmetric(vertical: 3),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(4)
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            DateFormat('dd/MM/yyyy').format(todo.dateTime),
            style: TextStyle(
              fontSize: 12,
            ),),
          Text(todo.title, style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),),
        ],
      ),
    ), actionPane: const SlidableDrawerActionPane(),
    secondaryActions: [
      IconSlideAction(
        color: Colors.red,
        icon: Icons.delete,
        onTap: () {},
      ),
    ],
    );
  }
}
