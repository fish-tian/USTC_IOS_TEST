//
//  ViewController.m
//  helloworld_ios
//
//  Created by oneofakind on 2020/12/16.
//

#import "ViewController.h"
#import "model/helloworld.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *text;
@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
@property (weak, nonatomic) IBOutlet UIButton *btn3;

@end

@implementation ViewController
- (IBAction)sayhello1:(UIButton *)sender {
    self.label.text = [helloworld sayHelloWorld];
}
- (IBAction)sayhello2:(UIButton *)sender {
    helloworld *h = [[helloworld alloc]init];
    self.label.text = [h sayHello:@"IOS world"];
}
- (IBAction)sayhello3:(UIButton *)sender {
    helloworld *h = [[helloworld alloc]init];
    h.something = self.text.text;
    self.label.text = [h saysomething];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if(textField == self.text) {
        [textField resignFirstResponder];
    }
    return YES;
}
@end
