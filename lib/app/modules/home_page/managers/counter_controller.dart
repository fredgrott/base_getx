// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:base_getx/app/shared/log_pens.dart';
import 'package:base_getx/app/shared/logger_types.dart';
import 'package:get/get.dart';

class CounterController extends GetxController with UtilityLogger {
  int count = 0;

  dynamic increment() {
    count++;
    logger.info(penInfo("count increased by 1"));
    update();
  }

  dynamic decrement() {
    count--;
    logger.info(penInfo("count decreased by 1"));
    update();
  }
}
