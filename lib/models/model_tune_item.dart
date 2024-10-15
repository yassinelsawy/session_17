import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ModelTuneItem{

  final Color colorItem ;
  final String pathSound ;

  const ModelTuneItem({required this.colorItem, required this.pathSound});

  // play sound from package audio player
  void playSound(){
    var player = AudioPlayer();
    player.play(AssetSource(pathSound));
  }

}