import 'package:flutter_application_2/AzkarModels/AzkarReaponde.dart';
import 'package:flutter_application_2/wake_up_Azkar/wakeReaponde.dart';

List<Map<String, dynamic>> data = [
  {
    "Azkir": {
      "Azkir":
          "الحَمْـدُ لِلّهِ الّذي أَحْـيانا بَعْـدَ ما أَماتَـنا وَإليه النُّـشور.",
      "Repetition": 1
    }
  },
  {
    "Azkir": {
      "Azkir":
          "الحمدُ للهِ الذي عافاني في جَسَدي وَرَدّ عَليّ روحي وَأَذِنَ لي بِذِكْرِه. ",
      "Repetition": 1
    }
  },
  {
    "Azkir": {
      "Azkir":
          "لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شَـريكَ له، لهُ المُلـكُ ولهُ الحَمـد، وهوَ على كلّ شيءٍ قدير، سُـبْحانَ اللهِ، والحمْـدُ لله ، ولا إلهَ إلاّ اللهُ واللهُ أكبَر، وَلا حَولَ وَلا قوّة إلاّ باللّهِ العليّ العظيم. رَبِّ اغْفرْ لي. ",
      "Repetition": 1
    }
  },
];
List<WakeReapond> WakeUpList =
    data.map((e) => WakeReapond.fromjson(e)).toList();
