import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  TodoListPage({Key? key}) : super(key: key);

  final TextEditingController tarefaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: tarefaController,
                decoration: InputDecoration(
                  labelText: 'Nova Tarefa',
                  hintText: 'Adicione uma nova tarefa',
                  //border: OutlineInputBorder(),
                  errorText: null,
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              ElevatedButton(
                  onPressed: login,
                  child: Text('Entrar'),
              )
            ],
          ),
        ),
      ),
    );
  }

  void login() {
    String text = tarefaController.text;
    print(text);
  }
}