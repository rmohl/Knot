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

  void removeDesignAtIndex(int index) {
    if (index >= 0 && index < designList.length) {
      designList.removeAt(index);
      notifyListeners();
    } else {
      throw ArgumentError('Invalid index: $index');
    }
  }

  // Getter for accessing Design object at a specific index
  Design getDesignAtIndex(int index) {
    if (index >= 0 && index < designList.length) {
      return designList[index];
    } else {
      throw ArgumentError('Invalid index: $index');
    }
  }

  // Setter for modifying Design object at a specific index
  void setDesignAtIndex(int index, Design newDesign) {
    if (index >= 0 && index < designList.length) {
      designList[index] = newDesign;
      notifyListeners();
    } else {
      throw ArgumentError('Invalid index: $index');
    }
  }
}