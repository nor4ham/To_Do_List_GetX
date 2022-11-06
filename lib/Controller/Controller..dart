import 'package:get/get.dart';
import 'package:getx_to_do_list/main.dart';

import '../Model/model.dart';

class Controller extends GetxController {
  final MyList = [].obs;
  final task = " ".obs;
  void addTask(String task) {
    MyList.add(new ToDoList(task));
  }

  void deleteTask(int index) {
    MyList.removeAt(index);
  }

  void editTask(int index) {
    print("MyList NotEdited:${task.value}");
    MyList.value[index].Task = task.value;
    // print(MyList.value[index].Task);
    print("MyList Edited:${task.value}");
    update();
  }
}

void Task(String task) {}
