import 'package:flutter/material.dart';
import 'package:to_do_app/colors.dart';
import 'package:to_do_app/todo.dart';

class ToDoItem extends StatelessWidget {

  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;
  const ToDoItem({super.key,required this.todo, this.onToDoChanged, this.onDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print('click');
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone? Icons.check_box: Icons.check_box_outline_blank,
          color: tdBlack,
          ),
          title: Text(
            todo.todoText!,
            style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: todo.isDone? TextDecoration.lineThrough: null,
            ),
          ),
          trailing: Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 12),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: tdRed,
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              color: Colors.white,
              iconSize:18,
              icon: Icon(Icons.delete),
              onPressed: () { 
                // print('delete');
                onDeleteItem(todo.id);
               },),
          ),
      )
    );
  }
}