import 'package:statekit/statekit.dart';
import '../repository/about_repository.dart';
import '../binding/about_binding.dart';

class AboutController extends StateController<AboutBinding> {
  final AboutRepository _repository = AboutRepository();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}