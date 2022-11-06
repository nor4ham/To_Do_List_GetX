import 'package:get/get.dart';

import 'binding.dart';
import 'view/task_screan.dart';

appRoutes() => [
      GetPage(
        name: '/home',
        page: () => TasksSrceen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
        binding: MainBinding(),
      ),
      
    ];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}
