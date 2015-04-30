#import "AppDelegate.h"
#import <CRuby.h>


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	CRBValue *result = [CRuby evaluate:@"[1, 2, 3].map {|n| n ** 2}"];
	NSString *string = result.inspect;
	NSLog(@"result: %@", string);
	return YES;
}

@end
