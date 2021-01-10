//
//  calc.h
//  calculator
//
//  Created by oneofakind on 2020/12/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface calc : NSObject
@property (strong, atomic) NSMutableString *disp;
-(void) delNumber;
-(NSString *) computeResult;
-(void) clearDisp;

@end

NS_ASSUME_NONNULL_END
