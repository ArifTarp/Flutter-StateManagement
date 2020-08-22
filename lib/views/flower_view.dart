import 'package:StateManagement/models/flower.dart';
import 'package:flutter/material.dart';

class FlowerView extends StatefulWidget {
  FlowerView({Key key}) : super(key: key);

  @override
  _FlowerViewState createState() => _FlowerViewState();
}

class _FlowerViewState extends State<FlowerView> {
  var _flowerListModel = FlowerListModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Vanilla
            _buildVanilla();

            print(_flowerListModel.countOfFlower);
          },
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
            itemCount: _flowerListModel.countOfFlower,
            itemBuilder: (context, index) {
              return Text(_flowerListModel.list[index].color);
            }));
  }

  void _buildVanilla() {
    /*
      _flowerListModel.addFlower(FlowerModel("Red", "Daisy"));
      setState(() {});
    */
    // or
    setState(() {
      _flowerListModel.addFlower(FlowerModel("Red", "Daisy"));
    });
  }
}
