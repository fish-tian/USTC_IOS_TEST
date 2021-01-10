//
//  helloworld.h
//  HelloWorld_Command
//
//  Created by oneofakind on 2020/12/16.
//

@interface helloworld : NSObject
@property (strong, nonatomic) NSString *something;

+ (void) sayHelloWorld;
- (void) sayHello:(NSString *) greeting;
- (void) saysomething;
@end
