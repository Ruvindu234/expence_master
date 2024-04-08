import 'package:flutter/material.dart';
import '../models/expence.dart';

class Expences extends StatefulWidget {
  const Expences({super.key});

  @override
  State<Expences> createState() => _ExpencesState();
}

class _ExpencesState extends State<Expences> {
  final List<ExpenceModel> _expenceList = [
    ExpenceModel(
        amount: 12.5,
        date: DateTime.now(),
        title: "Football",
        category: Category.leisure),
    ExpenceModel(
        amount: 10,
        date: DateTime.now(),
        title: "Carrot",
        category: Category.food),
    ExpenceModel(
        amount: 12.5,
        date: DateTime.now(),
        title: "Football",
        category: Category.leisure),
    ExpenceModel(
        amount: 10,
        date: DateTime.now(),
        title: "Carrot",
        category: Category.leisure)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Expences',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              color: Colors.black,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          ListView.builder(
            itemCount: _expenceList.length,
            itemBuilder: (context, index) {
              return Text(_expenceList[index].title);
              // return Card(
              //   child: ListTile(
              //     title: Text(_expenceList[index].title),
              //     subtitle: Text(_expenceList[index].category.name),
              //     trailing: Text('\$${_expenceList[index].amount}'),
              //   ),
              // );
            },
          ),
        ],
      ),
    );
  }
}
