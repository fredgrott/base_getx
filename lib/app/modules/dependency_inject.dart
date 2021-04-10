// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:base_getx/app/modules/home_page/managers/counter_controller.dart';
import 'package:base_getx/app/modules/getx_logger.dart';
import 'package:base_getx/app/translations/translaion_service.dart';
import 'package:get/get.dart';

/// DependencyInject where both controllers and binding and their routes are injected.
/// Get settings are also set in the init method
/// @author Fredrick Allan Grott
class DependencyInject {
  static void init() {
    // past one screen injection via constructors we have
    // to use more involved injection that can be singleton
    // persisted across screens
    Get.lazyPut(() => CounterController(), fenix: true);
    // not using the GetMaterialApp way of configuring GetX so
    // have to manually configure the specifics
    Get.locale = TranslationService.locale;
    Get.fallbackLocale = TranslationService.fallbackLocale;
    // this is the only settings needed as the other
    // settings are through the FlutterPlatformWidgets system such as transitions
    // and routes
    Get.config(
      // enable logging
      enableLog: true,
      // wrap the GetX logging into the log system being used ie developer.log
      // through the GetXLogger class write method
      logWriterCallback: GetXLogger.write,
    );
  }
}
