import 'package:flutter/foundation.dart';

class TasksScreenProvider with ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  set setSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  final List<String> _categories = ["Tasks", "Schedule", "Daily Practices"];

  List<String> get categories => _categories;
}
