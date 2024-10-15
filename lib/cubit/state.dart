abstract class TuneAppState{}

class TuneAppInitial extends TuneAppState{}

class SoundPlayed extends TuneAppState{}

class SoundFailed extends TuneAppState{}

class TuneCreate extends TuneAppState{}

class TuneInsert extends TuneAppState{}

class TuneDelete extends TuneAppState{}

class TuneGet extends TuneAppState{
  final List<Map> ls ;

  TuneGet({required this.ls});
}

