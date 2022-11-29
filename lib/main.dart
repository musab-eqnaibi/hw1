import 'dart:html';

import 'package:flutter/material.dart';
import 'student.dart';
import 'student_card.dart';
void main() {
  runApp(const MyApp());
}
List<student> students = [

];
TextEditingController nameController =TextEditingController();
TextEditingController idController =TextEditingController();
TextEditingController markController =TextEditingController();



class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('student app'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            TextField(
              controller: nameController,//to read or write text from textfeild type
              decoration:InputDecoration(
                labelText: 'name'
              ) ,
            ),
            TextField(
              controller: idController,//to read or write text from textfeild type
              decoration:InputDecoration(
                  labelText: 'id'
              ) ,
            ),
            TextField(
              controller: markController,//to read or write text from textfeild type
              decoration:InputDecoration(
                  labelText: 'marks'
              ) ,
            ),

            ElevatedButton(
                onPressed: (){
                  students.add(student(nameController.text,idController.text,markController.text));

                  setState(() {
                    nameController.clear();
                    idController.clear();

                  });

                },
                child: Text("add student"),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return studentCard(students[index]);
                },
              ),
            ),
          ],
        ),
        )
      );
  }
}



