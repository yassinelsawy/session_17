//import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session17/cubit/state.dart';
import 'package:session17/helper.dart';
import 'package:session17/models/model_tune_item.dart';
import 'package:session17/screen/ui/tune_item.dart';


class TuneAppCubit extends Cubit<TuneAppState>{
  
  TuneAppCubit() : super(TuneAppInitial()){
    createDB();
  }

  static TuneAppCubit get(context) => BlocProvider.of(context);
  
   DbHelper tuneDb = DbHelper.instance;
  
   Color? colorItem;
   String? pathSound;
    final  List<ModelTuneItem> modelTuneItems = const [
    ModelTuneItem(colorItem: Colors.red, pathSound: 'quran/001.mp3'),
    ModelTuneItem(colorItem: Colors.orange, pathSound: 'quran/002.mp3'),
    ModelTuneItem(colorItem: Colors.yellow, pathSound: 'quran/003.mp3'),
    ModelTuneItem(colorItem: Colors.green, pathSound: 'quran/004.mp3'),
    ModelTuneItem(colorItem: Colors.blue, pathSound: 'quran/005.mp3'),
    ModelTuneItem(colorItem: Colors.lightBlueAccent, pathSound: 'quran/006.mp3'),
    ModelTuneItem(colorItem: Colors.purple, pathSound: 'quran/007.mp3'),
  ];
  List<Map> dt = [];

  void createDB() async{
    await tuneDb.database;
    emit(
      TuneCreate()
    );
  }
    void insertToDB(String title , String dis) async{
    await tuneDb.insertData(title, dis);
    emit(
      TuneInsert()
    );
  }
  void deleteDB(int id) async{
    await tuneDb.deleteData(id);
    emit(
      TuneDelete()
    );
  }
  void getDB() async{
    dt = await tuneDb.getData();
    emit(
      TuneGet(ls: dt)
    );
  }

  void playSound(){
    var player = AudioPlayer();
    player.play(AssetSource(pathSound!)).then(
      (value){
        emit(SoundPlayed());
      }
    ).catchError(
      (error)
      {
        emit(SoundFailed());
      }
    );
    
  }
  // List<TuneItem> listTuneItems(){
  //   List<TuneItem> items = [];
  //   for (var item in modelTuneItems) {
  //     items.add(TuneItem(modelTuneItem:item ,title: , dis: ,));
  //   }
  //   return items;
  // }




}