import 'package:statekit/statekit.dart';
import '../repository/sub_subject_selection_repository.dart';
import '../binding/sub_subject_selection_binding.dart';

class SubSubjectSelectionController extends StateController<SubSubjectSelectionBinding> {
  final SubSubjectSelectionRepository _repository = SubSubjectSelectionRepository();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}