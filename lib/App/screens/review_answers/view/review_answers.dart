import 'package:statekit/statekit.dart';
import 'package:flutter/material.dart';
import '../../base_screen/view/base_screen.dart';
import '../../base_screen/view/custom_appbar.dart';
import '../binding/review_answers_binding.dart';
import '../controller/review_answers_controller.dart';

class ReviewAnswers extends StatekitView<ReviewAnswersController> implements ReviewAnswersBinding {
  ReviewAnswers({super.key, super.tag});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppbar(title: Text("review answers")),
      body: StateBuilder<ReviewAnswersController>(
        controller: controller,
        builder: (context, controller, child) {
          return Center(
            child: Text("review answers"),
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