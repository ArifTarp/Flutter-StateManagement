import 'package:StateManagement/models/flower.dart';
import 'package:StateManagement/models/flower_for_value_notifier.dart';
import 'package:flutter/material.dart';

class AddFlowerWithValueNotifyView extends StatefulWidget {
  AddFlowerWithValueNotifyView({Key key}) : super(key: key);

  @override
  _AddFlowerWithValueNotifyViewState createState() =>
      _AddFlowerWithValueNotifyViewState();
}

class _AddFlowerWithValueNotifyViewState
    extends State<AddFlowerWithValueNotifyView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: OutlineButton(
                child: Text("Add Flower"),
                onPressed: () {
                  flowerNotify.addFlower(FlowerModel("Blue", "Daisy"));
                })));
  }
}
