// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'method_channel_google_maps_flutter.dart';

/// The interface that implementations of google_maps_flutter must implement.
///
/// Platform implementations should extend this class rather than implement it as `google_maps_flutter`
/// does not consider newly added methods to be breaking changes. Extending this class
/// (using `extends`) ensures that the subclass will get the default implementation, while
/// platform implementations that `implements` this interface will be broken by newly added
/// [GoogleMapsFlutterPlatform] methods.
abstract class GoogleMapsFlutterPlatform extends PlatformInterface {
  /// Constructs a GoogleMapsFlutterPlatform.
  GoogleMapsFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static GoogleMapsFlutterPlatform _instance = MethodChannelGoogleMapsFlutter();

  /// The default instance of [GoogleMapsFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelUrlLauncher].
  static GoogleMapsFlutterPlatform get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [GoogleMapsFlutterPlatform] when they register themselves.
  static set instance(GoogleMapsFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// foo
  Future<void> foo() {
    throw UnimplementedError('foo() has not been implemented.');
  }
}
