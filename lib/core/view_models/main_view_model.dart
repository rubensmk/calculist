import 'package:calcu_list/core/view_models/base_view_model.dart';

class MainViewModel extends BaseViewModel {
  static MainViewModel _mainViewModel;

  static MainViewModel instance() {
    if (_mainViewModel == null) {
      _mainViewModel = MainViewModel();
    }
    return _mainViewModel;
  }
}
