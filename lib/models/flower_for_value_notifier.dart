import 'package:flutter/cupertino.dart';
import 'flower.dart';

final flowerNotify = FlowerNotifierModel(FlowerListModel());

class FlowerNotifierModel extends ValueNotifier<FlowerListModel>{
  FlowerNotifierModel(FlowerListModel value) : super(value);

  void addFlower(FlowerModel flowerModel){
    value.addFlower(flowerModel);
    notifyListeners();
  }
}