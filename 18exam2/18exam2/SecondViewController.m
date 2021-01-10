//
//  SecondViewController.m
//  18exam2
//
//  Created by oneofakind on 2021/1/10.
//

#import "SecondViewController.h"
#import "ViewController.h"
@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _textField.text = [NSString stringWithFormat:@"%lu", _str.length];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    if([segue.identifier isEqualToString:@"SecondScene"]) {
//        if([segue.destinationViewController isKindOfClass:[ViewController class]]) {
//            ViewController *vc = (ViewController *) segue.destinationViewController;
//            //_str = _textField.text;
//            vc.textField.text = _str;
//            NSLog(vc.textField.text);
//        }
//    }
//}

- (IBAction)changeBig:(UIButton *)sender {
    NSArray *arr = [_str componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@" "]];
        int i= 0;
        for (NSString *e1 in arr)
        {
            NSLog(e1);
            if([e1 isEqual:@""]) {
                i++;
                continue;
            }
            NSMutableString* numstr = [NSMutableString stringWithString:[e1 uppercaseString]];
            [numstr deleteCharactersInRange:NSMakeRange(1, numstr.length - 1)];
            [numstr appendString:[e1 substringFromIndex:1]];
            [_str replaceCharactersInRange:NSMakeRange(i, e1.length) withString:numstr];
            i += numstr.length + 1;
        }
    NSLog(_str);
}
- (IBAction)changeLittle:(UIButton *)sender {
}

@end
