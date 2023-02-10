import 'dart:ui';

import 'package:duckcart_osama/models/creator_model.dart';
import 'package:duckcart_osama/shared/components/demo_lists.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxMap favorites = {}.obs;

  late CreatorModel creatorModel;

  initializeFavs() {
    for (var element in models) {
      favorites.addAll({element.id: false});
    }
  }

  @override
  void onInit() {
    initializeFavs();
    super.onInit();
  }

  var checked = false.obs;

  void onChange(checked) {
    this.checked.value = checked;
    update();
  }

  Rx<MaterialColor> favColor = Colors.red.obs;

  void changeFavColor(int productId) {
    favorites[productId] = !favorites[productId];
  }
}
