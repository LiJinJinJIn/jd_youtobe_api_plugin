#import "JdYoutobeApiPlugin.h"
#if __has_include(<jd_youtobe_api_plugin/jd_youtobe_api_plugin-Swift.h>)
#import <jd_youtobe_api_plugin/jd_youtobe_api_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "jd_youtobe_api_plugin-Swift.h"
#endif

@implementation JdYoutobeApiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftJdYoutobeApiPlugin registerWithRegistrar:registrar];
}
@end
