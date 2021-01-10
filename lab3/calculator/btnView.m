

#import "btnView.h"

@implementation btnView
- (void)awakeFromNib{
    [self.layer setMasksToBounds:YES];
    [self.layer setCornerRadius:12];
    [self.layer setBorderWidth:1];
}
@end
