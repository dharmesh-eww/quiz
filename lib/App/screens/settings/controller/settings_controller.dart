import 'package:statekit/statekit.dart';
import '../repository/settings_repository.dart';
import '../binding/settings_binding.dart';

class SettingsController extends StateController<SettingsBinding> {
  final SettingsRepository _repository = SettingsRepository();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}