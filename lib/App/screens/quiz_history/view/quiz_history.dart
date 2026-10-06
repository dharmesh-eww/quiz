import 'package:statekit/statekit.dart';
import 'package:flutter/material.dart';
import '../../base_screen/view/base_screen.dart';
import '../../base_screen/view/custom_appbar.dart';
import '../binding/quiz_history_binding.dart';
import '../controller/quiz_history_controller.dart';

class QuizHistory extends StatekitView<QuizHistoryController> implements QuizHistoryBinding {
  QuizHistory({super.key, super.tag});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppbar(title: Text("quiz history")),
      body: StateBuilder<QuizHistoryController>(
        controller: controller,
        builder: (context, controller, child) {
          return Center(
            child: Text("quiz history"),
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