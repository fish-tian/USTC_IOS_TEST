//
//  ViewController.m
//  18exam1
//
//  Created by oneofakind on 2021/1/10.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textFiled;
@property (weak, nonatomic) IBOutlet UIButton *changeRedBtn;
@property (weak, nonatomic) IBOutlet UIButton *changeYellowBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if(textField == _textFiled) {
        [textField resignFirstResponder];
    }
    return YES;
}

- (IBAction)changeRed:(UIButton *)sender {
    _textFiled.backgroundColor = [UIColor redColor];
}
- (IBAction)changeYellow:(UIButton *)sender {
    _textFiled.backgroundColor = [UIColor yellowColor];
}




@end
