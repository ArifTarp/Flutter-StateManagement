import 'package:StateManagement/models/flower.dart';
import 'package:StateManagement/views/add_flower_with_provider_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FlowerWithProviderView extends StatelessWidget {
  const FlowerWithProviderView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Consumer<FlowerListForProviderModel>(
        child: Text("Count : "),
        builder: (context, FlowerListForProviderModel model, child) {
          return Row(
            children: [
              child,
              Text(model.countOfFlower.toString()),
              FlatButton.icon(
                icon: Icon(Icons.keyboard_arrow_right),
                label: Text("Go To Add Flower"),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AddFlowerWithProviderView()));
                },
              )
            ],
          );
        },
      ),
    );
  }

  ListView _buildBody(BuildContext context) {
    return ListView.builder(
        //itemCount: Provider.of<FlowerListForProviderModel>(context).countOfFlower,
        itemCount: Provider.of<FlowerListForProviderModel>(context,listen: false).countOfFlower,
        itemBuilder: (context, index) {
          return Text(
              "${index + 1}.${Provider.of<FlowerListForProviderModel>(context).list[index].color}");
        });
  }
}
