// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:base_getx/app/modules/home_page/views/my_home_page_platform_exp.dart';

import 'package:base_getx/app/themes/app_brightness.dart';
import 'package:base_getx/app/themes/cupertino_theme.dart';
import 'package:base_getx/app/themes/material_dark_theme.dart';
import 'package:base_getx/app/themes/material_theme.dart';
import 'package:catcher/catcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';



class MyAppPlatformExp extends StatelessWidget {
  


  

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: brightness == Brightness.light ? materialTheme : materialDarkTheme,
      child: PlatformProvider(
          //no do not make const
          // ignore: prefer_const_constructors
          builder: (context) => PlatformApp(
                // getx settings go here
                
                debugShowCheckedModeBanner: false,
                navigatorKey: Catcher.navigatorKey,

                // ignore: prefer_const_literals_to_create_immutables
                localizationsDelegates: <LocalizationsDelegate<dynamic>>[
                  DefaultMaterialLocalizations.delegate,
                  DefaultWidgetsLocalizations.delegate,
                  DefaultCupertinoLocalizations.delegate,
                ],
                title: 'Base GetX',
                material: (_, __) {
                  return MaterialAppData(
                    theme: materialTheme,
                    darkTheme: materialDarkTheme,
                    themeMode: brightness == Brightness.light
                        ? ThemeMode.light
                        : ThemeMode.dark,
                  );
                },
                cupertino: (_, __) => CupertinoAppData(
                  theme: cupertinoTheme,
                ),
                home: MyHomePagePlatformExp(),
                //initialPlatform: TargetPlatform.iOS,
              )),
    );
  }
}
