//
//  calc_stack.h
//  calculator
//
//  Created by oneofakind on 2020/12/23.
//

#import <Foundation/Foundation.h>
#import "Stack.h"

NS_ASSUME_NONNULL_BEGIN

@interface calc_stack : NSObject
@property (strong, atomic) Stack* stack1;
@property (strong, atomic) Stack* stack2;
@property (strong, atomic) NSMutableString *disp;
-(void) delNumber;
-(NSString *) computeResult;
-(void) clearDisp;
@end

NS_ASSUME_NONNULL_END
