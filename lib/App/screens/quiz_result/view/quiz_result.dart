import 'package:statekit/statekit.dart';
import 'package:flutter/material.dart';
import '../../base_screen/view/base_screen.dart';
import '../../base_screen/view/custom_appbar.dart';
import '../binding/quiz_result_binding.dart';
import '../controller/quiz_result_controller.dart';

class QuizResult extends StatekitView<QuizResultController> implements QuizResultBinding {
  QuizResult({super.key, super.tag});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppbar(title: Text("quiz result")),
      body: StateBuilder<QuizResultController>(
        controller: controller,
        builder: (context, controller, child) {
          return Center(
            child: Text("quiz result"),
          );
        },
      ),
    );
  }

  @override
  void doSomething() {
    // TODO: implement doSomething
  }
}