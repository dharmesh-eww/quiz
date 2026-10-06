import 'package:statekit/statekit.dart';
import 'package:flutter/material.dart';
import '../../base_screen/view/base_screen.dart';
import '../../base_screen/view/custom_appbar.dart';
import '../binding/how_to_play_binding.dart';
import '../controller/how_to_play_controller.dart';

class HowToPlay extends StatekitView<HowToPlayController> implements HowToPlayBinding {
  HowToPlay({super.key, super.tag});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppbar(title: Text("how to play")),
      body: StateBuilder<HowToPlayController>(
        controller: controller,
        builder: (context, controller, child) {
          return Center(
            child: Text("how to play"),
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