import 'package:statekit/statekit.dart';
import '../repository/quiz_result_repository.dart';
import '../binding/quiz_result_binding.dart';

class QuizResultController extends StateController<QuizResultBinding> {
  final QuizResultRepository _repository = QuizResultRepository();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}