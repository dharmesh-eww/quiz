import 'package:statekit/statekit.dart';
import '../repository/review_answers_repository.dart';
import '../binding/review_answers_binding.dart';

class ReviewAnswersController extends StateController<ReviewAnswersBinding> {
  final ReviewAnswersRepository _repository = ReviewAnswersRepository();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}