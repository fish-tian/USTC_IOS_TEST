
#import "Calculator.h"
#import <math.h>

@interface AdvancedCalculator : Calculator
@property (strong,nonatomic)NSMutableString *screen;
- (NSString *)sqrt:(NSString *) content;
- (NSString *)abs:(NSString *) content;
- (NSString *)onedx:(NSString *) content;
- (NSString *)x2:(NSString *) content;
- (NSString *)sin:(NSString *) content;
- (NSString *)cos:(NSString *) content;
- (NSString *)tan:(NSString *) content;
- (NSString *)x3:(NSString *) content;
- (NSString *)asin:(NSString *) content;
- (NSString *)acos:(NSString *) content;
- (NSString *)atan:(NSString *) content;
- (NSString *)ln:(NSString *) content;
- (NSString *)sinh:(NSString *) content;
- (NSString *)cosh:(NSString *) content;
- (NSString *)tanh:(NSString *) content;
- (NSString *)log:(NSString *) content;
@end
