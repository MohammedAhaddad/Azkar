class Prayer {
  String? Ziker;
  int? Repetition;

  Prayer.json(Map<String, dynamic> data) {
    Ziker = data["Azkir"];
    Repetition = data["Repetition"];
  }
}
