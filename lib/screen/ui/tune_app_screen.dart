import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session17/cubit/cubit.dart';
import 'package:session17/screen/ui/tune_app_body.dart';

class TuneAppScreen extends StatelessWidget {
  const TuneAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TuneAppCubit>(
      create: (context) => TuneAppCubit(),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            'Tune App',
          ),
        ),
        body: const TuneAppBody(),
      ),
    );
  }
}
