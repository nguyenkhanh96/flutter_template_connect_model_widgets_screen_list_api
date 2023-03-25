import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'My Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GridView.count(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 3,
          children: itemModel
              .map((e) => ItemGridPage(
                    itemModel: e,
                  ))
              .toList(),
        ));
  }
}

class ItemModel {
  final int id;
  final String name;

  ItemModel({required this.id, required this.name});
}

List<ItemModel> itemModel = <ItemModel>[
  ItemModel(id: 1, name: "Khanh"),
  ItemModel(id: 2, name: "messi"),
  ItemModel(id: 3, name: "suarez"),
  ItemModel(id: 4, name: "Busques"),
  ItemModel(id: 5, name: "Neymar"),
  ItemModel(id: 6, name: "Xavi"),
  ItemModel(id: 7, name: "Vandes"),
  ItemModel(id: 8, name: "Pedro"),
  ItemModel(id: 9, name: "Iniesta"),
  ItemModel(id: 10, name: "Alba"),
];

class ItemGridPage extends StatelessWidget {
  const ItemGridPage({super.key, required this.itemModel});
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 1)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${itemModel.id}'),
            Text(itemModel.name),
          ],
        ),
      ),
    );
  }
}
