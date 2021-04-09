// Copyright(c) 2021 Fredrick Allan Grott. All rights reserved. Use of this source code is governed by a BSD-style license.

import 'package:base_getx/app/modules/home_page/managers/counter_controller.dart';
import 'package:base_getx/app/shared/logger_types.dart';
import 'package:base_getx/app/themes/my_cupertino_page_scaffold_data.dart';
import 'package:base_getx/app/themes/my_cupertino_navigation_bar_data.dart';
import 'package:base_getx/app/themes/my_material_app_bar_data.dart';
import 'package:base_getx/app/themes/my_material_scaffold_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:get/get.dart';



class MyHomePagePlatformExp extends StatelessWidget with UiLogger {
  final CounterController _controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      material: (
          _,
          __,
        ) =>
            myMaterialScaffoldData,
        cupertino: (
          _,
          __,
        ) =>
            myCupertinoPageScaffoldData,
        appBar: PlatformAppBar(
          title: PlatformText('Base StateWidget'),
          material: (
            _,
            __,
          ) =>
              myMaterialAppBarData,
          cupertino: (_, __) => myCupertinoNavigationBarData,
          trailingActions: <Widget>[
            PlatformIconButton(
              padding: EdgeInsets.zero,
              icon: Icon(context.platformIcons.share),
              onPressed: () {},
            ),
          ],
        ),
        body: SafeArea(
          // Usually a better layout plan includes both the Parent Safe Widget and
          // a child Stack Widget as the container to hold a typical screen layout.
          // The main thing is that we have to have a Stack Widget to properly do
          // background images as the Stack container has to be close
          // in parent-child relationship to the scaffold widget.
          // Plus,the stack widget has a children attribute to allow
          // us to add all our simulated FABs etc.
          //
          // A core gist fundamental is that we sue specific widgets to
          // group like widgets than need to be positionally grouped
          // together. i.e. column and row widgets, etc.
          //
          // IMHO the best layout cheatsheet is the one at:
          // https://github.com/TakeoffAndroid/flutter-examples
          // which was created by Chandrasekar Kuppusamy
          child: Stack(children: <Widget>[
            // sets the background image
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/background.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                top: 10.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GetBuilder<CounterController>(
                        builder: (controller) => PlatformText(
                        "decrement or increment   ${controller.count}",
                         style: const TextStyle(fontSize: 18),
                       ),
                    ),
                  ],
                )),
            Positioned(
                bottom: 4,
                right: 34,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    PlatformIconButton(
                         onPressed: () {
                         _controller.increment();
                         },
                         padding: EdgeInsets.zero,
                         icon: Icon(context.platformIcons.addCircledSolid),
                    ),
                    PlatformIconButton(
                         onPressed: () {
                         _controller.decrement();
                         },
                         padding: EdgeInsets.zero,
                         icon: Icon(context.platformIcons.deleteSolid),
                    ),

                  ]
                  ))
          ]),

        ),
    );
  }
}
