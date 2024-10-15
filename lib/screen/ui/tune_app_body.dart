import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session17/cubit/cubit.dart';
import 'package:session17/cubit/state.dart';
//import 'package:session17/models/model_tune_item.dart';
import 'package:session17/screen/ui/tune_item.dart';

class TuneAppBody extends StatelessWidget {
  const TuneAppBody({super.key});


  @override
  Widget build(BuildContext context) {

  TuneAppCubit cubit = TuneAppCubit.get(context);
    
    return BlocConsumer<TuneAppCubit,TuneAppState>(
      builder: (context, state) => SafeArea(
        child: Column(
        children: cubit.modelTuneItems
            .map((model) => TuneItem(modelTuneItem: model,title: ,))
            .toList(),
        //children: listTuneItems(),
      ), 
      ),
      listener: (context, state){},
      
    );
  }
}
