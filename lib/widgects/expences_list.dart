import 'package:expence_master/models/expence.dart';
import 'package:expence_master/widgects/expence_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpenceList extends StatelessWidget {
  const ExpenceList({super.key, required this.expenceList});

  final List<ExpenceModel> expenceList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: expenceList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: ExpenceTile(
              expence: expenceList[index],
            ),
          );
        },
      ),
    );
  }
}
