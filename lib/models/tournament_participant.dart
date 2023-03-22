class TournamentParticipant {
  late String _participantId;
  late String _dateRegister;
  late String _tournamentId;
  late String _participatedBy;
  late int _seeding;
  //Check whether the team participant register as a solo or team
  late bool _isSolo;
  //Indicator flag to check if the participant has pay the fee
  late bool _hasPay;

  String get participantId => _participantId;
  String get dateRegister => _dateRegister;
  String get tournamentId => _tournamentId;
  String get participatedBy => _participatedBy;
  int get seeding => _seeding;
  bool get isSolo => _isSolo;
  bool get hasPay => _hasPay;

  TournamentParticipant({
    String participantId = '',
    String dateRegister = '',
    String tournamentId = '',
    String participatedBy = '',
    int seeding = 0,
    bool isSolo = false,
    bool hasPay = false,
  })  : _participantId = participantId,
        _dateRegister = dateRegister,
        _tournamentId = tournamentId,
        _participatedBy = participatedBy,
        _seeding = seeding,
        _isSolo = isSolo,
        _hasPay = hasPay;

  TournamentParticipant.fromJson(Map<String, dynamic> map){
    if (map.containsKey('participantId') &&
        map.containsKey('dateRegister') &&
        map.containsKey('tournamentId') &&
        map.containsKey('participatedBy') &&
        map.containsKey('seeding') &&
        map.containsKey('isSolo') &&
        map.containsKey('hasPay')) {
      _participantId = map['participantId'];
      _dateRegister = map['dateRegister'];
      _tournamentId = map['tournamentId'];
      _participatedBy = map['participatedBy'];
      _seeding = map['seeding'];
      _isSolo = map['isSolo'];
      _hasPay = map['hasPay'];
    } else {
      throw ArgumentError('Required keys are missing from the User model');
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'participantId': _participantId,
      'dateRegister': _dateRegister,
      'tournamentId': _tournamentId,
      'participatedBy': _participatedBy,
      'seeding': _seeding,
      'isSolo': _isSolo,
      'hasPay': _hasPay,
    };
  }

  TournamentParticipant copyWith(Map<String, dynamic> map) {
    return TournamentParticipant.fromJson(map);
  }
}