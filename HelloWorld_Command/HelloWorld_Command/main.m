//
//  main.m
//  HelloWorld_Command
//
//  Created by oneofakind on 2020/12/8.
//

#import <Foundation/Foundation.h>
#import "helloworld.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [helloworld sayHelloWorld];
        helloworld *hw = [[helloworld alloc] init];
        hw.something = @"IOS world";
        [hw sayHello:@"IOS"];
        [hw saysomething];
    }
    return 0;
}
