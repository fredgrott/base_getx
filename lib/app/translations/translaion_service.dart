// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'dart:ui';

import 'package:base_getx/app/translations/en_US.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';

class TranslationService extends Translations {
  static Locale get locale => Get.deviceLocale;
  static const fallbackLocale = Locale('en', 'US');
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en_US,
      };
}