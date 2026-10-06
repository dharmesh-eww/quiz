import 'package:statekit/statekit.dart';
import '../repository/subject_selection_repository.dart';
import '../binding/subject_selection_binding.dart';

class SubjectSelectionController extends StateController<SubjectSelectionBinding> {
  final SubjectSelectionRepository _repository = SubjectSelectionRepository();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}