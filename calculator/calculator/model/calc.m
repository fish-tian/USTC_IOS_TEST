//
//  calc.m
//  calculator
//
//  Created by oneofakind on 2020/12/17.
//

#import "calc.h"

@implementation calc

- (void)clearDisp {
    self.disp = nil;
}

- (NSString *)computeResult {
    @try {
        NSExpression *exp = [NSExpression expressionWithFormat:self.disp];
        id value = [exp expressionValueWithObject:nil context:nil];
        NSLog(@"result=%f", [value floatValue]);
        self.disp = [NSMutableString stringWithString:[value stringValue]];
        return [value stringValue];
    }
    @catch (NSExpression *exception) {
        self.disp = nil;
        return @"error";
    }
}

// 覆盖getter
-(NSMutableString *) disp {
    if(!_disp) {
        _disp = [[NSMutableString alloc] init];
    }
    return _disp;
}

- (void)delNumber {
    long len = self.disp.length - 1;
    if(len >= 0) {
        [self.disp deleteCharactersInRange:NSMakeRange(len, 1)];
    }
}
@end
