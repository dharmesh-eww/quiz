import 'package:statekit/statekit.dart';
import 'package:flutter/material.dart';
import '../../base_screen/view/base_screen.dart';
import '../../base_screen/view/custom_appbar.dart';
import '../binding/statistic_binding.dart';
import '../controller/statistic_controller.dart';

class Statistic extends StatekitView<StatisticController> implements StatisticBinding {
  Statistic({super.key, super.tag});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppbar(title: Text("statistic")),
      body: StateBuilder<StatisticController>(
        controller: controller,
        builder: (context, controller, child) {
          return Center(
            child: Text("statistic"),
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