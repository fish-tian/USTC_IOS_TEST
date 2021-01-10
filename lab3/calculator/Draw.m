
#import "Draw.h"

@implementation Draw

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
//    CGColorRef yellow = [[UIColor yellowColor] CGColor];
//
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextClearRect(context, self.bounds);
//
//    CGContextSetFillColorWithColor(context, yellow);
//    CGContextFillRect(context, CGRectMake(10, 10, 100, 100));
    
    //UIRectFill(CGRectMake(10, 10, 100, 100));
    CGRect rectangle = CGRectMake(0, 100, 320, 100);
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetRGBFillColor(context, 1.0, 1.0, 1.0, 0.0);   //this is the transparent color
        CGContextSetRGBStrokeColor(context, 0.0, 0.0, 0.0, 0.5);
        CGContextFillRect(context, rectangle);
        CGContextStrokeRect(context, rectangle);    //this will draw the border
}

@end
