
#import <Foundation/Foundation.h>

@interface Calculator : NSObject
@property(strong, nonatomic)NSMutableString *disp;
- (void) delNumber;
- (NSString *)computedResult;
- (void)cleardisp;
- (void)dispConvertToFloat;
@end
