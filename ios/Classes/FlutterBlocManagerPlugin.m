#import "FlutterBlocManagerPlugin.h"
#if __has_include(<flutter_bloc_manager/flutter_bloc_manager-Swift.h>)
#import <flutter_bloc_manager/flutter_bloc_manager-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_bloc_manager-Swift.h"
#endif

@implementation FlutterBlocManagerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterBlocManagerPlugin registerWithRegistrar:registrar];
}
@end
