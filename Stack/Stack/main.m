//
//  main.m
//  Stack
//
//  Created by oneofakind on 2020/12/17.
//

#import <Foundation/Foundation.h>
#import "Stack.h"

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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char array[100];
        while(scanf("%s", array)) {
            Stack *stack1 = [[Stack alloc] init];
            Stack *stack2 = [[Stack alloc] init];
            
            NSMutableString *temp = [NSMutableString stringWithString:@""];
            
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
                    [stack1 push:tempArray[i]];
                }
                // 运算符
                else {
                    // 优先级相同或更低
                    
                    while([stack2 size] != 0 && equalOrLow(tempArray[i], [stack2 peek]) && flag1 == 0) {
                        int num2 =  [[stack1 pop] intValue];
                        NSString *op = [stack2 pop];
                        int num1 = [[stack1 pop] intValue];
                        int num = 0;
                        
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
        
                        [stack1 push:[NSString stringWithFormat:@"%d", num]];
                    }
                    
                    [stack2 push:tempArray[i]];
                }
            }
            
            if(flag1 == 1) {
                memset(array, 0, sizeof(array));
                continue;
            }
            
            int flag = 0;
            while([stack2 size] > 0) {
                int num2 =  [[stack1 pop] intValue];
                NSString *op = [stack2 pop];
                int num1 = [[stack1 pop] intValue];
                int num = 0;
                
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

                [stack1 push:[NSString stringWithFormat:@"%d", num]];
            }
            
            if(flag != 1) {
                NSLog(@"结果为 %@", [stack1 pop]);
            }
            
            memset(array, 0, sizeof(array));
        }
    }
    return 0;
}
