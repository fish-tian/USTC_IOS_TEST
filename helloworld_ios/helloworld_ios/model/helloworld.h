//
//  helloworld.h
//  helloworld_ios
//
//  Created by oneofakind on 2020/12/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface helloworld : NSObject
@property (strong, nonatomic) NSString *something;

+ (NSString *) sayHelloWorld;
- (NSString *) sayHello:(NSString *) greeting;
- (NSString *) saysomething;
@end

NS_ASSUME_NONNULL_END
