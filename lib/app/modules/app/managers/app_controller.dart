// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ui';


import 'package:get/get.dart';

class AppController extends GetxController {
  Brightness brightness = Brightness.light;

  void initGetX(){
    Get.isLogEnable = true;
    Get.locale = const Locale('en', 'US');
  }

  





  void toggleBrightness() {
    brightness == Brightness.light
        ? brightness = Brightness.dark
        : brightness = Brightness.light;
  }
}
