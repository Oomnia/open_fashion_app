class ListItemModel {
  final String title;
  final String imgpath;

  ListItemModel({required this.title, required this.imgpath});

  static List<ListItemModel> itemList = [
    ListItemModel(title: 'HAE BY HAEKIM', imgpath: 'assets/items/item3.png'),
    ListItemModel(title: 'Black collection', imgpath: 'assets/items/item2.png'),
    ListItemModel(title: 'White HAEKIM', imgpath: 'assets/items/item1.png'),
  ];
}
