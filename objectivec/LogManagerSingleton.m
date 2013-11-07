#import "LogManagerSingleton.h"

@implementation LogManagerSingleton

// c's version of log
// printf("%s\n", "asdd");

- (id) init {
  self = [super init];

  if ( self ) {
    NSLog(@"Starting Log Manager");
  }

  return self;
}

+ (LogManagerSingleton *) sharedSingleton {
  static LogManagerSingleton * sharedSingleton;
  if ( !sharedSingleton ) {
    sharedSingleton = [[LogManagerSingleton alloc] init];
  }

  return sharedSingleton;
}

- (void)logString:(NSString *)messageDescription logMessage:(NSString *)logString {

  if ( messageDescription != nil ) {
    NSLog([messageDescription stringByAppendingString:@" %@"], logString);
  } else {
    NSLog(@"%@", logString);
  }
}

@end
