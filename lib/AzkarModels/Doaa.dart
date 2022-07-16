class Doaa {
  String? Ziker;
  int? Repetition;

  Doaa.json(Map<String, dynamic> data) {
    Ziker = data["Azkir"];
    Repetition = data["Repetition"];
  }
}
