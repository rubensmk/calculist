import 'package:calcu_list/core/models/list_items.dart';
import 'package:calcu_list/core/view_models/base_view_model.dart';

class MainViewModel extends BaseViewModel {
  static MainViewModel _mainViewModel;

  static MainViewModel instance() {
    if (_mainViewModel == null) {
      _mainViewModel = MainViewModel();
    }
    return _mainViewModel;
  }

  // Variables

  List<ListItem> listItems = List();
  double totalValue = 0.0;

  // Constructor
  MainViewModel() {
    listItems = [
      ListItem(name: "Frango"),
      ListItem(name: "Arroz"),
      ListItem(name: "Feijão"),
      ListItem(name: "Macarrão"),
      ListItem(name: "Batata"),
      ListItem(name: "Maçã"),
      ListItem(name: "Coquinha gelada"),
    ];
  }
  //////////////

  // Functions

  void addItem(String name) {
    listItems.add(ListItem(name: name, id: listItems.length));
    notifyListeners();
  }

  void removeItem(int index) {
    listItems.removeAt(index);
    notifyListeners();
  }

  void editValue(String name, double value, int index) {
    listItems[index] = ListItem(
      name: name,
      value: value,
      id: index,
    );
    calculateTotalValue();
    notifyListeners();
  }

  void checkItem(int index) {
    listItems[index].isChecked = !listItems[index].isChecked;
    notifyListeners();
  }

  void calculateTotalValue() {
    totalValue = 0.0;
    for (var i in listItems) {
      totalValue += i.value;
    }
  }
}
