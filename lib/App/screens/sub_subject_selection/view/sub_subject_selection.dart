import 'package:statekit/statekit.dart';
import 'package:flutter/material.dart';
import '../../base_screen/view/base_screen.dart';
import '../../base_screen/view/custom_appbar.dart';
import '../binding/sub_subject_selection_binding.dart';
import '../controller/sub_subject_selection_controller.dart';

class SubSubjectSelection extends StatekitView<SubSubjectSelectionController> implements SubSubjectSelectionBinding {
  SubSubjectSelection({super.key, super.tag});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppbar(title: Text("sub subject selection")),
      body: StateBuilder<SubSubjectSelectionController>(
        controller: controller,
        builder: (context, controller, child) {
          return Center(
            child: Text("sub subject selection"),
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