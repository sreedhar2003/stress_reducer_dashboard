import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class StressreducerDashboardController with ChangeNotifier {
  int selectedIndex = 0;
  final List<String> options = ["Day", "Week", "Month"];

  //tracked inputs
  final List<String> trackedoption = ["HRV", "Resting HR", "Breathing Rate"];

  //carousel slider
  final PageController allinsightscontroller = PageController();

  int currentIndex = 0;

  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

  List<Map<String, dynamic>> influencelist = [
    {
      "icon": Icons.volume_up_outlined,
      "subject": "Noise",
      "rating": "45 dB",
    },
    {
      "icon": Icons.wb_sunny_outlined,
      "subject": "Light",
      "rating": "300 lux",
    },
    {
      "icon": Icons.air,
      "subject": "Air Quality",
      "rating": "Good",
    },
  ];
}
