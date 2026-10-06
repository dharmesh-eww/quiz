import 'package:statekit/statekit.dart';
import 'package:flutter/material.dart';
import '../../base_screen/view/base_screen.dart';
import '../../base_screen/view/custom_appbar.dart';
import '../binding/introduction_binding.dart';
import '../controller/introduction_controller.dart';

class Introduction extends StatekitView<IntroductionController> implements IntroductionBinding {
  Introduction({super.key, super.tag});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppbar(title: Text("introduction")),
      body: StateBuilder<IntroductionController>(
        controller: controller,
        builder: (context, controller, child) {
          return Center(
            child: Text("introduction"),
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