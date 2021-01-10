//
//  helloworld.m
//  helloworld_ios
//
//  Created by oneofakind on 2020/12/17.
//

#import "helloworld.h"

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

- (NSString *)sayHello:(NSString *)greeting {
    NSString *str = @"hello";
    NSMutableString *mstr = [NSMutableString stringWithString:str];
    [mstr appendString:greeting];
    return mstr;
}

+ (NSString *)sayHelloWorld {
    return @"Hello world";
}

- (NSString *)saysomething {
    NSString *str = @"hello";
    NSMutableString *mstr = [NSMutableString stringWithString:str];
    [mstr appendString:self.something];
    return mstr;
}
@end
