import 'package:flutter/cupertino.dart';

// Value Notifier
final flowerNotify = FlowerNotifier(FlowerListModel());

class FlowerNotifier extends ValueNotifier<FlowerListModel>{
  FlowerNotifier(FlowerListModel value) : super(value);

  void addFlower(FlowerModel flowerModel){
    value.addFlower(flowerModel);
    notifyListeners();
  }
}

class FlowerListModel{
  final List<FlowerModel> list = [];
  int get countOfFlower => list.length;

  void addFlower(FlowerModel flowerModel){
    list.add(flowerModel);
  }
}

class FlowerModel{
  final String color;
  final String type;

  FlowerModel(this.color, this.type);
}
