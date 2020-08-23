import 'package:flutter/cupertino.dart';

import 'flower.dart';

class FlowerListForProviderModel extends ChangeNotifier{
  final List<FlowerModel> list = [];
  int get countOfFlower => list.length;

  void addFlower(FlowerModel flowerModel){
    list.add(flowerModel);
    notifyListeners();
  }
}