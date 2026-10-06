import 'package:statekit/statekit.dart';
import '../repository/introduction_repository.dart';
import '../binding/introduction_binding.dart';

class IntroductionController extends StateController<IntroductionBinding> {
  final IntroductionRepository _repository = IntroductionRepository();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}