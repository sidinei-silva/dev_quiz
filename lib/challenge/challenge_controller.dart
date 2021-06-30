import 'package:flutter/material.dart';

class ChallengeController {
  final currentPageNotifier = ValueNotifier<int>(0);
  int get currentPage => currentPageNotifier.value;
  set currentPage(int value) => currentPageNotifier.value = value;

  int qtdRight = 0;
}
