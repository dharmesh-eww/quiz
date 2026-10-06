import 'package:statekit/statekit.dart';
import '../repository/home_screen_repository.dart';
import '../binding/home_screen_binding.dart';

class HomeScreenController extends StateController<HomeScreenBinding> {
  final HomeScreenRepository _repository = HomeScreenRepository();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}