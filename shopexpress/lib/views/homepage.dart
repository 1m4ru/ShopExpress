import 'package:flutter/material.dart';
import 'package:shopexpress/components/CategoriesList.dart';
import 'package:shopexpress/components/TabBar.dart';
import 'package:shopexpress/components/cardItem.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop Express"),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Color.fromARGB(255, 238, 236, 236),
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CategoriesList()),
                    );
                  },
                  child: Tabbar(name: 'Categorias')),
              Tabbar(name: 'Cidades'),
            ],
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return CardItem(
                      title: 'Sofa',
                      price: '500',
                      picture: 'https://source.unsplash.com/150x100/?couch',
                      city: 'São jose',
                      date: '18/11',
                    );
                  }))
        ],
      ),
    );
  }
}
