import 'package:flutter/foundation.dart';

class AppState extends ChangeNotifier {
  List<String> _activeFilters = [];
  String? _searchQuery;
  bool _isLoading = false;
  
  List<String> get activeFilters => _activeFilters;
  String? get searchQuery => _searchQuery;
  bool get isLoading => _isLoading;
  
  void addFilter(String filter) {
    if (!_activeFilters.contains(filter)) {
      _activeFilters.add(filter);
      notifyListeners();
    }
  }
  
  void removeFilter(String filter) {
    _activeFilters.remove(filter);
    notifyListeners();
  }
  
  void clearFilters() {
    _activeFilters.clear();
    notifyListeners();
  }
  
  void setSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }
  
  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }
}
