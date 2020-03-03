#import "GoogleMapsFlutterWebPlugin.h"
#if __has_include(<google_maps_flutter_web/google_maps_flutter_web-Swift.h>)
#import <google_maps_flutter_web/google_maps_flutter_web-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "google_maps_flutter_web-Swift.h"
#endif

@implementation GoogleMapsFlutterWebPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGoogleMapsFlutterWebPlugin registerWithRegistrar:registrar];
}
@end
