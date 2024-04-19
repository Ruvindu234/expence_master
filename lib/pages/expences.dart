import 'package:expence_master/widgects/add_new_expence.dart';
import 'package:expence_master/widgects/expences_list.dart';
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
        amount: 10.77,
        date: DateTime.now(),
        title: "Carrot",
        category: Category.food),
    ExpenceModel(
        amount: 12.55,
        date: DateTime.now(),
        title: "Bag",
        category: Category.travel),
    ExpenceModel(
        amount: 10.99,
        date: DateTime.now(),
        title: "Carrot",
        category: Category.leisure)
  ];

  void _openAddExpenceModel() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return AddNewExpence();
      },
    );
  }

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
                onPressed: _openAddExpenceModel,
                icon: const Icon(Icons.add, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          ExpenceList(expenceList: _expenceList),
        ],
      ),
    );
  }
}
