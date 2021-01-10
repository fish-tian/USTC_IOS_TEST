//
//  helloworld.m
//  HelloWorld_Command
//
//  Created by oneofakind on 2020/12/16.
//

#import <Foundation/Foundation.h>
#import "helloworld.h"
@interface helloworld() {
    
}
@end

@implementation helloworld
// 自动生成getter、setter
@synthesize something=_something;

- (void)setSomething:(NSString *)something {
    NSMutableString *mstr = [NSMutableString stringWithString:something];
    [mstr appendString:@"😊"];
    _something = mstr;
}

- (NSString *)something {
    return _something;
}

- (void)sayHello:(NSString *)greeting {
    NSString *str = @"hello";
    NSMutableString *mstr = [NSMutableString stringWithString:str];
    [mstr appendString:greeting];
    NSLog(@"%@", mstr);
}

+ (void)sayHelloWorld {
    NSLog(@"Hello world");
}

- (void)saysomething {
    NSString *str = @"hello";
    NSMutableString *mstr = [NSMutableString stringWithString:str];
    [mstr appendString:self.something];
    NSLog(@"%@", mstr);
}
@end

