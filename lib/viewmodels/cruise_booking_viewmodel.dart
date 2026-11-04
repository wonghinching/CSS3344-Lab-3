import 'package:flutter/material.dart';
import '../models/cruise_destination.dart';

class CruiseBookingViewModel extends ChangeNotifier {
  final CruiseDestination destination = CruiseDestination(
    title: 'Rajang River Express Cruise',
    location: 'Sibu Waterfront, Sarawak',
    description: 'Experience the heart of Sibu along Malaysia\'s longest river, the Rajang. Cruise past historic temples, timber hubs, and waterfront settlements while experiencing authentic Sarawakian hospitality.',
  );

  int _starCount = 43;
  DateTime _selectedDate = DateTime.now();
  String _selectedPackage = 'Express Boat';
  bool _isDarkMode = false;

  final List<String> packages = ['Express Boat', 'Sunset Cruise', 'Sunrise Cruise', 'Rural Cruise', 'SMI Park Cruise'];

  int get starCount => _starCount;
  DateTime get selectedDate => _selectedDate;
  String get selectedPackage => _selectedPackage;
  bool get isDarkMode => _isDarkMode;

  void incrementStar() {
    _starCount++;
    notifyListeners();
  }

  void updateDate(DateTime date) {
    _selectedDate = date;
    notifyListeners();
  }

  void updatePackage(String package) {
    _selectedPackage = package;
    notifyListeners();
  }

  void toggleTheme(bool isDark) {
    _isDarkMode = isDark;
    notifyListeners();
  }
}