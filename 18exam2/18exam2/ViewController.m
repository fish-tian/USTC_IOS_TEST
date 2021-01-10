//
//  ViewController.m
//  18exam2
//
//  Created by oneofakind on 2021/1/10.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

// 视图即将加载
- (void)viewWillAppear:(BOOL)animated {
    _textField.text = _str;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"SecondScene"]) {
        if([segue.destinationViewController isKindOfClass:[SecondViewController class]]) {
            SecondViewController *svc = (SecondViewController *) segue.destinationViewController;
            _str = [NSMutableString stringWithString:_textField.text];
            NSLog(@"%p", self.str);
            NSLog(@"%p", svc.str);
            svc.str = self.str;
            NSLog(@"%p", self.str);
            NSLog(@"%p", svc.str);
        }
    }
}
@end
