import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controller/Controller..dart';
import 'card_task.dart';

class ListViewOfTasks extends StatelessWidget {
  Controller controller = Get.find(tag: "data");
  ListViewOfTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Obx(() {
        return
        ListView.builder(
          shrinkWrap: true,
          itemCount: controller.MyList.length,
          itemBuilder: (BuildContext context, int index) {
            return CardTask(
              index: index,
            );
          },
        );
      },)
    );
  }
}
