#import "HelloStrings.h"

@implementation HelloStrings

- (id)init {
  self = [super init];

  if ( self ) {
    [self logString:@"init hellostrings"];
  }

  return self;
}

- (void)logString:(NSString *)logString {
  NSLog(logString);
}

@end
