import 'package:flutter/material.dart';

class Evening {
  String? Ziker;
  int? Repetition;

  Evening.json(Map<String, dynamic> data) {
    Ziker = data["Azkir"];
    Repetition = data["Repetition"];
  }
}
