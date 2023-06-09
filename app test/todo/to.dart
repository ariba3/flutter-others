import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/pages/homepage.dart';

class To extends StatelessWidget {
  const To({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff2B2D2D),
        scaffoldBackgroundColor: Color(0xff2B2D2D),
      ),
    );
  }
}

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  String input = "";
  List todo = [];

  @override
  void initState() {
    todo.add("Study");
    todo.add("add");
    todo.add("Cycling");
    todo.add("add");
    todo.add("add");
    todo.add("Cycling");
    todo.add("add");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            elevation: 0.0,
            centerTitle: true,
            title: const Text(
              'Notes App',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 4),
            )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.add,
            color: Colors.blue[500],
            size: 35,
          ),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: const Color(0xffF48C8C),
                    title: const Text("Add ToDo's"),
                    content: TextField(
                      decoration: const InputDecoration(hintText: "ToDo's"),
                      onChanged: (String value) {
                        input = value;
                      },
                    ),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              todo.add(input);
                            });
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            "ADD",
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  );
                });
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(5),
          child: ListView.builder(
              itemCount: todo.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  key: Key(todo[index]),
                  child: Card(
                    elevation: 4,
                    margin: const EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ListTile(
                      title: Text(
                        todo[index],
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.delete_forever_rounded,
                          color: Colors.blue,
                        ),
                        onPressed: () {
                          setState(() {
                            todo.removeAt(index);
                          });
                        },
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
