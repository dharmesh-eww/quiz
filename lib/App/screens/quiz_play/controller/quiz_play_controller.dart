import 'package:statekit/statekit.dart';
import '../repository/quiz_play_repository.dart';
import '../binding/quiz_play_binding.dart';

class QuizPlayController extends StateController<QuizPlayBinding> {
  final QuizPlayRepository _repository = QuizPlayRepository();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}