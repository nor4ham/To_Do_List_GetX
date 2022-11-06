import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/Controller..dart';
import 'widgets/list.dart';

// ignore_for_file: prefer_const_constructors
class TasksSrceen extends StatelessWidget {
  Controller controller = Get.find(tag: "data");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // ignore: prefer_const_constructors
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // ignore: prefer_const_constructors
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => SingleChildScrollView(
                        child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: Container(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              "Add New Task ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                            // ignore: prefer_const_constructors
                            TextField(
                              autofocus: true,
                              textAlign: TextAlign.center,
                              onChanged: (value) {
                                controller.task.value = value;
                              },
                            ),
                            const SizedBox(height: 20),
                            TextButton(
                              onPressed: () {
                                controller.addTask(controller.task.value);
                                print(controller.task.value);
                                print(controller.MyList.length);
                                Navigator.pop(context);
                              },
                              // ignore: sort_child_properties_last
                              child: const Text(
                                "Add",
                              ),
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.blue[500],
                                  primary: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )));
          },
          // ignore: prefer_const_constructors
          backgroundColor: Color.fromARGB(255, 80, 168, 239),
          child: const Icon(Icons.add),
        ),
        backgroundColor: Colors.blue[100],
        body: Container(
          padding: const EdgeInsets.only(
            top: 30,
            left: 10,
            right: 10,
            bottom: 80,
          ),
          child: Column(
            children: [
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Icon(
                    Icons.playlist_add_check,
                    size: 40,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    'To Do list',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              // ignore: prefer_const_constructors
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Obx((() {
                    return Text(
                      controller.MyList.length.toString() + "  tasks ",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  }))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                  ),
                  child: ListViewOfTasks(),
                  // ignore: prefer_const_literals_to_create_immutables
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
