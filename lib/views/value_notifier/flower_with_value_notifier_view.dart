import 'package:StateManagement/models/flower.dart';
import 'package:StateManagement/models/flower_for_value_notifier.dart';
import 'package:flutter/material.dart';

import 'add_flower_with_value_notify_view.dart';

class FlowerWithValueNotifierView extends StatefulWidget {
  FlowerWithValueNotifierView({Key key}) : super(key: key);

  @override
  _FlowerWithValueNotifierViewState createState() =>
      _FlowerWithValueNotifierViewState();
}

class _FlowerWithValueNotifierViewState
    extends State<FlowerWithValueNotifierView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(context),
        floatingActionButton: _buildFloatingActionButton(),
        body: _buildForValueNotifier());
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
            icon: Icon(Icons.navigate_next),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AddFlowerWithValueNotifyView()));
            })
      ],
    );
  }

  FloatingActionButton _buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        flowerNotify.addFlower(FlowerModel("Yellow", "Daisy"));
      },
      child: Icon(Icons.add),
    );
  }

  ValueListenableBuilder<FlowerListModel> _buildForValueNotifier() {
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
}
