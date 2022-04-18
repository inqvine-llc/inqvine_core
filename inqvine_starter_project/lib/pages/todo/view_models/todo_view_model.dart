import 'package:inqvine_starter_project/pages/base/view_models/inqvine_view_model.dart';
import 'package:inqvine_core_main/inqvine_core_main.dart';

class TodoViewModel extends InqvineViewModel {
  int _counter = 0;
  int get counter => _counter;

  void incrementCounter() {
    _counter += 2;
    'Incrementing counter'.logInfo();

    notifyListeners();
  }
}
