import 'package:statekit/statekit.dart';
import 'package:flutter/material.dart';
import '../../base_screen/view/base_screen.dart';
import '../../base_screen/view/custom_appbar.dart';
import '../binding/settings_binding.dart';
import '../controller/settings_controller.dart';

class Settings extends StatekitView<SettingsController> implements SettingsBinding {
  Settings({super.key, super.tag});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppbar(title: Text("settings")),
      body: StateBuilder<SettingsController>(
        controller: controller,
        builder: (context, controller, child) {
          return Center(
            child: Text("settings"),
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