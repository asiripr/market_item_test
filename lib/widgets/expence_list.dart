import 'package:flutter/material.dart';
import 'package:my_app_10/models/expence.dart';

class ExpenceList extends StatelessWidget {
  const ExpenceList({super.key, required this.expenceList});
  final List<ExpenceModel> expenceList;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: ListView.builder(
            itemCount: expenceList.length,
            itemBuilder: (context, index){
              return Card(
                child: Column(
                  children: [
                    Text(expenceList[index].title, style: Theme.of(context).textTheme.titleLarge,),
                    Row(children: [
                      Text(expenceList[index].amount.toStringAsFixed(2)),
                      Row(children: [
                        Icon(Icons.trending_up), 
                        Text(expenceList[index].date.toString())
                      ],)
                    ],)
                  ],
                ),
              );
            }
          )
    );
  }
}