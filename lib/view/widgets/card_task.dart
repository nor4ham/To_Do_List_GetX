import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controller/Controller..dart';

class CardTask extends StatelessWidget {
  int index;
  CardTask({required this.index, super.key});
  Controller controller = Get.find(tag: "data");

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.hardEdge,
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
        height: MediaQuery.of(context).size.height * 0.0893,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.delete,
                    size: 47,
                    color: Color.fromARGB(255, 144, 0, 0),
                  ),
                  onPressed: () {
                    print(controller.MyList.length);
                    print("object");
                    controller.deleteTask(index);
                    print(controller.MyList.length);
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => SingleChildScrollView(
                                child: Container(
                              padding: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom),
                              child: Container(
                                padding: const EdgeInsets.all(30),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    const Text(
                                      "Edit Task ",
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
                                        controller.editTask(index);
                                        print(controller.MyList.length);
                                        Navigator.pop(context);
                                      },
                                      // ignore: sort_child_properties_last
                                      child: const Text(
                                        "Edit",
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
                  icon: Icon(
                    Icons.edit,
                    size: 47,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      controller.MyList.value[index].Task.toString(),
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
