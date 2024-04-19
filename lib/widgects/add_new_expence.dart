import 'package:flutter/material.dart';

class AddNewExpence extends StatefulWidget {
  const AddNewExpence({super.key});

  @override
  State<AddNewExpence> createState() => _AddNewExpenceState();
}

class _AddNewExpenceState extends State<AddNewExpence> {
final _titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Title',
                label: Text('Title'),
              ),
              keyboardType: TextInputType.text,
              maxLength: 50,
            ),
          ),
        ],
      ),
    );
  }
}
