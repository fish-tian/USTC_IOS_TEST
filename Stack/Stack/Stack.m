//
//  Stack.m
//  Stack
//
//  Created by oneofakind on 2020/12/17.
//

#import "Stack.h"

@implementation Stack

- (id) init{
    _stack = [[NSMutableArray alloc] init];
    return self;
}

- (void)push:(NSString *)character {
    _last++;
    [_stack addObject:character];
}
	
- (int)size {
    return _last;
}

- (NSString *)peek {
    return _stack[_last - 1];
}

- (NSString *)pop {
    NSString * value = [NSString stringWithString:[self peek]];
    [_stack removeLastObject];
    _last--;
    return value;
}
@end
