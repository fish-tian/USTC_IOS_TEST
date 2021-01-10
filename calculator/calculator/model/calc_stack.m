//
//  calc_stack.m
//  calculator
//
//  Created by oneofakind on 2020/12/23.
//

#import "calc_stack.h"

@implementation calc_stack
- (void)clearDisp{
    self.disp = nil;
}

- (NSString *)computeResult{
    NSMutableString *temp = [NSMutableString stringWithString:@""];
    
    const char* array = [self.disp UTF8String];
    // 读入数组tempArray中
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for(int i = 0; i < strlen(array); i++) {
        if(array[i] == '+' || array[i] == '-' || array[i] == '*' || array[i] == '/') {
            //[stack push: [NSString stringWithString: temp]];
            [tempArray addObject:[NSString stringWithString: temp]];
            [temp setString:@""];
            [tempArray addObject:[NSString stringWithFormat: @"%c", array[i]]];
            //[stack2 push: [NSString stringWithFormat:@"%c", array[i]]];
        } else {
            [temp appendFormat:@"%c", array[i]];
        }
    }
    
    if(![temp isEqual:@""]) {
        [tempArray addObject:temp];
    }
    
    int flag1 = 0;
    for(int i = 0; i < [tempArray count] && flag1 == 0; i++) {
        // 数字
        if(i % 2 == 0) {
            if([tempArray[i] isEqual:@"+"] || [tempArray[i] isEqual:@"-"] || [tempArray[i] isEqual:@"*"] || [tempArray[i] isEqual:@"/"] || [tempArray[i] isEqual:@""]) {
                flag1 = 1;
            }
            [self.stack1 push:tempArray[i]];
        }
        // 运算符
        else {
            // 优先级相同或更低
            
            while([self.stack2 size] != 0 && equalOrLow(tempArray[i], [self.stack2 peek]) && flag1 == 0) {
                double num2 =  [[self.stack1 pop] doubleValue];
                NSString *op = [self.stack2 pop];
                double num1 = [[self.stack1 pop] doubleValue];
                double num = 0;
                
                if([op isEqual:@"+"]) {
                    num = num1 + num2;
                } else if([op isEqual:@"-"]) {
                    num = num1 - num2;
                } else if([op isEqual:@"*"]) {
                    num = num1 * num2;
                } else {
                    if(num2 == 0) {
                        NSLog(@"除数为0，错误");
                        flag1 = 1;
                    } else {
                        num = num1 / num2;
                    }
                }

                [self.stack1 push:[NSString stringWithFormat:@"%lf", num]];
            }
            
            [self.stack2 push:tempArray[i]];
        }
    }
    
    if(flag1 == 1) {
        self.disp = [NSMutableString stringWithString:@"error"];
        return @"error";
    }
    
    int flag = 0;
    while([self.stack2 size] > 0) {
        double num2 =  [[self.stack1 pop] doubleValue];
        NSString *op = [self.stack2 pop];
        double num1 = [[self.stack1 pop] doubleValue];
        double num = 0;
        
        if([op isEqual:@"+"]) {
            num = num1 + num2;
        } else if([op isEqual:@"-"]) {
            num = num1 - num2;
        } else if([op isEqual:@"*"]) {
            num = num1 * num2;
        } else {
            if(num2 == 0) {
                NSLog(@"除数为0，错误");
                flag = 1;
            } else {
                num = num1 / num2;
            }
        }

        [self.stack1 push:[NSString stringWithFormat:@"%lf", num]];
    }
    
    if(flag == 1) {
        self.disp = [NSMutableString stringWithString:@"error"];
        return @"error";
    }
    
    self.disp = [NSMutableString stringWithString:[self.stack1 pop]];
    return self.disp;
}

- (NSMutableString *)disp {
    if(!_disp) {
        _disp = [[NSMutableString alloc] init];
    }
    return _disp;
}

- (Stack *)stack2 {
    if(!_stack2) {
        _stack2 = [[Stack alloc] init];
    }
    return _stack2;
}

- (Stack *)stack1 {
    if(!_stack1) {
        _stack1 = [[Stack alloc] init];
    }
    return _stack1;
}

- (void)delNumber {
    long len = self.disp.length - 1;
    if(len >= 0) {
        [self.disp deleteCharactersInRange:NSMakeRange(len, 1)];
    }
}

bool equalOrLow(NSString *s1, NSString *s2) {
    int n1, n2;
    if([s1 isEqual: @"+"] || [s1 isEqual: @"-"]) {
        n1 = 0;
    } else {
        n1 = 1;
    }
    
    if([s2 isEqual: @"+"] || [s2 isEqual: @"-"]) {
        n2 = 0;
    } else {
        n2 = 1;
    }
    
    return n1 <= n2;
}
@end
