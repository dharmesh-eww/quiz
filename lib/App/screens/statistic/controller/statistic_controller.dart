import 'package:statekit/statekit.dart';
import '../repository/statistic_repository.dart';
import '../binding/statistic_binding.dart';

class StatisticController extends StateController<StatisticBinding> {
  final StatisticRepository _repository = StatisticRepository();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}