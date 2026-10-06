import 'package:statekit/statekit.dart';
import '../repository/quiz_history_repository.dart';
import '../binding/quiz_history_binding.dart';

class QuizHistoryController extends StateController<QuizHistoryBinding> {
  final QuizHistoryRepository _repository = QuizHistoryRepository();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}