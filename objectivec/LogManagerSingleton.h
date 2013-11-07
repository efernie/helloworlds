#import <Foundation/Foundation.h>

@interface LogManagerSingleton : NSObject

+ (LogManagerSingleton *)sharedSingleton;

- (void)logString:(NSString *)messageDescription logMessage:(NSString *)logString;

@end
