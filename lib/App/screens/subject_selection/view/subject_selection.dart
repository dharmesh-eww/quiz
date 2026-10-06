import 'package:statekit/statekit.dart';
import 'package:flutter/material.dart';
import '../../base_screen/view/base_screen.dart';
import '../../base_screen/view/custom_appbar.dart';
import '../binding/subject_selection_binding.dart';
import '../controller/subject_selection_controller.dart';

class SubjectSelection extends StatekitView<SubjectSelectionController> implements SubjectSelectionBinding {
  SubjectSelection({super.key, super.tag});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppbar(title: Text("subject selection")),
      body: StateBuilder<SubjectSelectionController>(
        controller: controller,
        builder: (context, controller, child) {
          return Center(
            child: Text("subject selection"),
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