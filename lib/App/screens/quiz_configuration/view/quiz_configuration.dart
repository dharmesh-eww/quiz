import 'package:statekit/statekit.dart';
import 'package:flutter/material.dart';
import '../../base_screen/view/base_screen.dart';
import '../../base_screen/view/custom_appbar.dart';
import '../binding/quiz_configuration_binding.dart';
import '../controller/quiz_configuration_controller.dart';

class QuizConfiguration extends StatekitView<QuizConfigurationController> implements QuizConfigurationBinding {
  QuizConfiguration({super.key, super.tag});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppbar(title: Text("quiz configuration")),
      body: StateBuilder<QuizConfigurationController>(
        controller: controller,
        builder: (context, controller, child) {
          return Center(
            child: Text("quiz configuration"),
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