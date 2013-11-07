#import "LogManagerSingleton.h"
#import "HelloNumbers.h"

@implementation HelloNumbers

- (id)init {
  self = [super init];

  if ( self ) {
    NSLog(@"__________________Initialize HelloNumbers__________________");
    [[LogManagerSingleton sharedSingleton] logString:@"test logmanager" logMessage:@"as"];
  }

  return self;
}

- (void)startExample {

}

@end
