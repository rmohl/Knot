import 'package:flutter/material.dart';
import 'Design.dart';

class DesignListProvider extends ChangeNotifier {
  List<Design> designList = [];

  List<Design> get list => designList;

  void addDesign (Design newDesign) {
    designList.add(newDesign);
    notifyListeners();
  }

  void removeDesign (Design oldDesign) {
    designList.remove(oldDesign);
    notifyListeners();
  }
}