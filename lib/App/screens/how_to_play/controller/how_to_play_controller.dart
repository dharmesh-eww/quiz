import 'package:statekit/statekit.dart';
import '../repository/how_to_play_repository.dart';
import '../binding/how_to_play_binding.dart';

class HowToPlayController extends StateController<HowToPlayBinding> {
  final HowToPlayRepository _repository = HowToPlayRepository();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}