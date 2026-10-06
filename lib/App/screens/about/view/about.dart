import 'package:statekit/statekit.dart';
import 'package:flutter/material.dart';
import '../../base_screen/view/base_screen.dart';
import '../../base_screen/view/custom_appbar.dart';
import '../binding/about_binding.dart';
import '../controller/about_controller.dart';

class About extends StatekitView<AboutController> implements AboutBinding {
  About({super.key, super.tag});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppbar(title: Text("about")),
      body: StateBuilder<AboutController>(
        controller: controller,
        builder: (context, controller, child) {
          return Center(
            child: Text("about"),
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