import 'package:StateManagement/models/flower.dart';
import 'package:flutter/material.dart';

class FlowerWithVanillaView extends StatefulWidget {
  FlowerWithVanillaView({Key key}) : super(key: key);

  @override
  _FlowerWithVanillaViewState createState() => _FlowerWithVanillaViewState();
}

class _FlowerWithVanillaViewState extends State<FlowerWithVanillaView> {
  var _flowerListModel = FlowerListModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {        
            _buildVanilla();
            print(_flowerListModel.countOfFlower);
          },
          child: Icon(Icons.add),
        ),
        body: _buildListViewForVanilla());
  }

  void _buildVanilla() {
    /*
      _flowerListModel.addFlower(FlowerModel("Red", "Daisy"));
      setState(() {});
    */
    // or better way
    setState(() {
      _flowerListModel.addFlower(FlowerModel("Red", "Daisy"));
    });
  }

  ListView _buildListViewForVanilla() {
    return ListView.builder(
        itemCount: _flowerListModel.countOfFlower,
        itemBuilder: (context, index) {
          return Text(_flowerListModel.list[index].color);
        });
  }
}
