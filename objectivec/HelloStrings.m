#import "HelloStrings.h"

@implementation HelloStrings

- (id)init {
  self = [super init];

  if ( self ) {
    [self logString:nil logMessage:@"Initialize HelloStrings"];
    [self startExample];
  }

  return self;
}

- (void)startExample {
  // Simple string
  NSString *barString = @"Bar";
  [self logString:@"String->" logMessage:barString];

  // empty string
  NSString *emptyString = [[NSString alloc] init];
  [self logString:@"Empty String->" logMessage:emptyString];
  // fill that empty string up
  emptyString = @"foo";
  [self logString:@"Filled up empty string->" logMessage:emptyString];

  // copy strings
  // we are copying the filled up empty string
  NSString *copyOfString = [[NSString alloc] initWithString:emptyString];
  [self logString:@"Copy of empty string that was filled->" logMessage:copyOfString];
}

- (void)logString:(NSString *)messageDescription logMessage:(NSString *)logString {

  if ( messageDescription != nil ) {
    NSLog([messageDescription stringByAppendingString:@" %@"], logString);
  } else {
    NSLog(@"%@", logString);
  }
}

@end
