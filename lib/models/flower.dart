class FlowerModel{
  final String color;
  final String type;

  FlowerModel(this.color, this.type);
}

class FlowerListModel{
  final List<FlowerModel> list = [];
  int get countOfFlower => list.length;

  void addFlower(FlowerModel flowerModel){
    list.add(flowerModel);
  }
}