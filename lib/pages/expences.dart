
// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app_10/models/expence.dart';
import 'package:my_app_10/widgets/expence_list.dart';

class Expences extends StatefulWidget {
  const Expences({super.key});

  @override
  State<Expences> createState() => _ExpencesState();
}

class _ExpencesState extends State<Expences> {
  //expence list
  final List <ExpenceModel> _expenceList = [
    ExpenceModel(
      title: "Foot Ball", 
      amount: 12.5, 
      date: DateTime.now(), 
      category: Category.leasure), 
    ExpenceModel(
      title: "Papaya",
      amount: 8.3, 
      date: DateTime.now(), 
      category: Category.food), 
    ExpenceModel(
      title: "Mini Project", 
      amount: 24.6, 
      date: DateTime.now(), 
      category: Category.work
      )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expence Master"),
        backgroundColor: const Color.fromARGB(255, 77, 57, 229),
        actions: [
          Container(
            color: Colors.yellow,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
          )
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