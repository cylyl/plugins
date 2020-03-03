// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:flutter/services.dart';

import 'google_maps_flutter_platform_interface.dart';

const MethodChannel _channel = MethodChannel('plugins.flutter.io/google_maps_flutter');

/// An implementation of [GoogleMapsFlutterPlatform] that uses method channels.
class MethodChannelGoogleMapsFlutter extends GoogleMapsFlutterPlatform {
  
  @override
  Future<void> foo() {
    return _channel.invokeMethod<void>('foo');
  }

}
