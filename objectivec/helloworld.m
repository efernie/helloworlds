// Single line comment

/**
 * Multi line comment
 *
 * Hello World intro to some objective c stuffs
 */

#import <Foundation/Foundation.h>

#import "hellostrings.h"

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    // log output similar to console.log() in js
    // but you need a format specifier if you want to include objects other
    // than strings and arguments
    NSLog(@"Hello World!");
    // c's version of log
    // printf("%s\n", "asdd");

    // Strings
    // class from another file
    // init hello strings obj
    HelloStrings *helloStrings = [[HelloStrings alloc] init];


    // Numbers
    NSNumber *zedNumber = @10;
    NSLog(@"Number-> %@", zedNumber);

    // Array
    NSArray *foods = @[@"pizza", @"tacos"];
    NSLog(@"Array-> %@", foods);

    // empty array
    NSArray *emptyArray = [[NSArray alloc] init];
    NSLog(@"Empty array-> %@ //emptyness", emptyArray);
    // add stuff to the array
    emptyArray = @[@"bar", @"foo"];
    NSLog(@"Empty array-> %@ //filled up", emptyArray);

    // there is also a mutablearray which things can be added after init
    // NSMutableArray *mutableArray = @[@"one",@"two",@"three"];

    // emptyArray[0] = @"bar";

    // non mutable dictionay this is similar to a json object
    NSDictionary *foodStyle = @{
      @"pizza": @"italian",
      // can use array index as key
      foods[1]: @"mexican"
    };

    NSLog(@"NSDictionary-> %@", foodStyle);
    NSLog(@"NSDictionary foods check pizza-> %@", [foodStyle objectForKey: @"pizza"]);

    // empty dictionary
    NSDictionary *emptyDictionary = [[NSDictionary alloc] init];

    // mutable dictionary where you can add key/values later on in the program
    NSMutableDictionary *mutateFoodStyle = [NSMutableDictionary dictionaryWithDictionary:@{
      @"foo": @"bar"
    }];

    NSLog(@"NSMutableDictionary-> %@", mutateFoodStyle);

    // commandline stuffs can't really use this with grunt
    // NSString *firstArg = [[NSString alloc] init];
    // char cFirstArg [40];
    // scanf("%s", &cFirstArg);

    // NSString *firstArg = [[NSString alloc] initWithCString: cFirstArg encoding: NSUTF8StringEncoding];
    // NSLog(@"Your inputvalue-> %@", firstArg);

    return 0;
  }
}
