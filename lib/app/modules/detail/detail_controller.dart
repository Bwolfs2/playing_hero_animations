import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'detail_controller.g.dart';

@Injectable()
class DetailController = _DetailControllerBase with _$DetailController;

abstract class _DetailControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
