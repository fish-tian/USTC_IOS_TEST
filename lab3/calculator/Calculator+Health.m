
#import "Calculator+Health.h"

@implementation Calculator (Health)
-(NSString *)computeHeathWithHeight:(NSString *) height andWeight:(NSString*) weight{
    
    NSMutableString *expression;
    expression=[NSMutableString stringWithString:weight];
    [expression appendString:@"/(("];
    [expression appendString:height];
    [expression appendString:@"/100.0)"];
    [expression appendString:@"*("];
    [expression appendString:height];
    [expression appendString:@"/100.0))"];
    self.disp=expression;
    return [NSString stringWithFormat:@"%.2f", [[self computedResult] floatValue]];
    
}
@end
