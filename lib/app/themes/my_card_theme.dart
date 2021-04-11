// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

// this might not be useable as on non materialApps
// even though we put it ina material and card 
// containers pairing we still do not '
// have access to this theme as its declared set 
// as part of themeData of the materialApp.
// So leaving here to remind everyone that if
// you need cross-platform cards than one 
// needs to re-impl card from source code 
// to account for having to redefine a widget 
// theme differently.
CardTheme myCardTheme = CardTheme(
  color: Colors.transparent,
  shadowColor: Colors.black12,
  elevation: 1,
  margin: EdgeInsetsGeometry.infinity,
  shape: ShapeBorder.lerp(null, null, null)
);
