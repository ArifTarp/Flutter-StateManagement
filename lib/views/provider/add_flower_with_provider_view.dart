import 'package:StateManagement/models/flower.dart';
import 'package:StateManagement/models/flower_for_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddFlowerWithProviderView extends StatefulWidget {
  AddFlowerWithProviderView({Key key}) : super(key: key);

  @override
  _AddFlowerWithProviderViewState createState() =>
      _AddFlowerWithProviderViewState();
}

class _AddFlowerWithProviderViewState
    extends State<AddFlowerWithProviderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: OutlineButton(
                child: Text("Add Flower"),
                onPressed: () {
                  Provider.of<FlowerListForProviderModel>(context,listen: false).addFlower(FlowerModel("White", "Daisy"));
                })));
  }
}
