// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


   import 'dart:developer';

class GetXLogger{

     static void write(String text, {bool isError = false}) {
      Future.microtask(() => log('** $text. isError: [$isError]'));
    }

   }