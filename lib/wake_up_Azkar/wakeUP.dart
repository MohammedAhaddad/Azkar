class WakeUP {
  String? Ziker;
  int? Repetition;

  WakeUP.json(Map<String, dynamic> data) {
    Ziker = data["Azkir"];
    Repetition = data["Repetition"];
  }
}
