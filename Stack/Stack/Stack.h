//
//  Stack.h
//  Stack
//
//  Created by oneofakind on 2020/12/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Stack : NSObject
// 数组实现栈
@property (copy, nonatomic) NSMutableArray *stack;
// 记录末尾
@property int last;

- (void) push: (NSString *) character;
- (NSString *) pop;
- (int) size;
- (NSString *) peek;
@end

NS_ASSUME_NONNULL_END
