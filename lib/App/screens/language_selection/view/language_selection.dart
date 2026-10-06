import 'package:statekit/statekit.dart';
import 'package:flutter/material.dart';
import '../../base_screen/view/base_screen.dart';
import '../../base_screen/view/custom_appbar.dart';
import '../binding/language_selection_binding.dart';
import '../controller/language_selection_controller.dart';

class LanguageSelection extends StatekitView<LanguageSelectionController> implements LanguageSelectionBinding {
  LanguageSelection({super.key, super.tag});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppbar(title: Text("language selection")),
      body: StateBuilder<LanguageSelectionController>(
        controller: controller,
        builder: (context, controller, child) {
          return Center(
            child: Text("language selection"),
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