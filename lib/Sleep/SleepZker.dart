class SleepZeker {
  String? Ziker;
  int? Repetition;

  SleepZeker.json(Map<String, dynamic> data) {
    Ziker = data["Azkir"];
    Repetition = data["Repetition"];
  }
}
