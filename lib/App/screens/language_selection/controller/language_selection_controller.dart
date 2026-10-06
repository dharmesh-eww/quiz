import 'package:statekit/statekit.dart';
import '../repository/language_selection_repository.dart';
import '../binding/language_selection_binding.dart';

class LanguageSelectionController extends StateController<LanguageSelectionBinding> {
  final LanguageSelectionRepository _repository = LanguageSelectionRepository();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}