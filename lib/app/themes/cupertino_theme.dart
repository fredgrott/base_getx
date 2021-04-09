// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:base_getx/app/themes/app_brightness.dart';
import 'package:base_getx/app/themes/my_cupertino_color_scheme.dart';
import 'package:flutter/cupertino.dart';

final cupertinoTheme = CupertinoThemeData(
      brightness: brightness, // if null will use the system theme
      // ignore: prefer_const_constructors
      primaryColor: myCupertinoPrimaryColor
);