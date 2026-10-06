import 'package:statekit/statekit.dart';
import '../repository/quiz_configuration_repository.dart';
import '../binding/quiz_configuration_binding.dart';

class QuizConfigurationController extends StateController<QuizConfigurationBinding> {
  final QuizConfigurationRepository _repository = QuizConfigurationRepository();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}