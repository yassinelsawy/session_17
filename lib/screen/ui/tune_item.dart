import 'package:flutter/material.dart';
import 'package:session17/cubit/cubit.dart';
import 'package:session17/models/model_tune_item.dart';
class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.modelTuneItem, required this.title,required this.dis});
 
  final ModelTuneItem  modelTuneItem;
  final  String title;
  final  String dis;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
          TuneAppCubit.get(context).playSound();
        },
        child: Container(
          color: modelTuneItem.colorItem,
          child: Column(
            children: [
              Text('Title: $title'),
              Text('Discreption: $dis'),
            ],
          ),
        ),
      ),
    );
  }
}
