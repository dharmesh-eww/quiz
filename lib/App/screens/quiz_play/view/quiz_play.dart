import 'package:statekit/statekit.dart';
import 'package:flutter/material.dart';
import '../../base_screen/view/base_screen.dart';
import '../../base_screen/view/custom_appbar.dart';
import '../binding/quiz_play_binding.dart';
import '../controller/quiz_play_controller.dart';

class QuizPlay extends StatekitView<QuizPlayController> implements QuizPlayBinding {
  QuizPlay({super.key, super.tag});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppbar(title: Text("quiz play")),
      body: StateBuilder<QuizPlayController>(
        controller: controller,
        builder: (context, controller, child) {
          return Center(
            child: Text("quiz play"),
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