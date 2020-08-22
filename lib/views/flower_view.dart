import 'package:StateManagement/models/flower.dart';
import 'package:StateManagement/views/add_flower_with_value_notify_view.dart';
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
        appBar: AppBar(
          actions: [
            IconButton(
                icon: Icon(Icons.navigate_next),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              AddFlowerWithValueNotifyView()));
                })
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Vanilla
            /*
            _buildVanilla();
            print(_flowerListModel.countOfFlower);
            */

            // Value Notifier
            flowerNotify.addFlower(FlowerModel("Yellow", "Daisy"));
          },
          child: Icon(Icons.add),
        ),
        body: _buildListForValueNotifier());
  }

  ValueListenableBuilder<FlowerListModel> _buildListForValueNotifier() {
    return ValueListenableBuilder(
        valueListenable: flowerNotify,
        child: Text("Here is not affected by change"),
        builder: (context, FlowerListModel model, child) {
          return ListView.builder(
              itemCount: model.countOfFlower,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    child,
                    Text(model.list[index].color),
                  ],
                );
              });
        });
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

  ListView _buildListViewForVanilla() {
    return ListView.builder(
        itemCount: _flowerListModel.countOfFlower,
        itemBuilder: (context, index) {
          return Text(_flowerListModel.list[index].color);
        });
  }
}
