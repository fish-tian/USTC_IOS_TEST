//
//  ViewController.m
//  18exam4
//
//  Created by oneofakind on 2021/1/10.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *num1;
@property (weak, nonatomic) IBOutlet UITextField *num2;
@property (weak, nonatomic) IBOutlet UILabel *sum;
@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //设置圆角（适应其他控件）
    _btn.layer.cornerRadius = 10.0f ;
      
    _btn.layer.masksToBounds = YES ;

}

- (IBAction)compute:(UIButton *)sender {
    int intnum1 = [_num1.text intValue];
    int intnum2 = [_num2.text intValue];
    _sum.text = [NSString stringWithFormat:@"%d", intnum1 + intnum2];
}

@end
