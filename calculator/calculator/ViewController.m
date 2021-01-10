//
//  ViewController.m
//  calculator
//
//  Created by oneofakind on 2020/12/17.
//

#import "ViewController.h"
#import "model/calc_stack.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *btnC;
@property (weak, nonatomic) IBOutlet UIButton *btnDel;
@property (weak, nonatomic) IBOutlet UIButton *btn0;
@property (weak, nonatomic) IBOutlet UIButton *btnDot;
@property (weak, nonatomic) IBOutlet UIButton *btnDiv;
@property (weak, nonatomic) IBOutlet UIButton *btnMult;
@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
@property (weak, nonatomic) IBOutlet UIButton *btn3;
@property (weak, nonatomic) IBOutlet UIButton *btnSub;
@property (weak, nonatomic) IBOutlet UIButton *btn4;
@property (weak, nonatomic) IBOutlet UIButton *btn5;
@property (weak, nonatomic) IBOutlet UIButton *btn6;
@property (weak, nonatomic) IBOutlet UIButton *btnPlus;
@property (weak, nonatomic) IBOutlet UIButton *btn7;
@property (weak, nonatomic) IBOutlet UIButton *btn8;
@property (weak, nonatomic) IBOutlet UIButton *btn9;
@property (weak, nonatomic) IBOutlet UIButton *btnEqual;

@property (strong, nonatomic) calc_stack *calcator;
@end

@implementation ViewController
// getter
- (calc_stack *) calcator {
    if(!_calcator) {
        _calcator = [[calc_stack alloc] init];
    }
    return _calcator;
}	

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 加载完视图后，初始化
    self.calcator = [[calc_stack alloc] init];
}

// 按下数字和四则运算符
- (IBAction)input:(UIButton *)sender {
    NSMutableString *str = [NSMutableString stringWithString:self.label.text];
    
    [self.calcator.disp appendString:[[sender titleLabel] text]];
    
    [str appendString:[[sender titleLabel] text]];
    self.label.text = str;
}

// 按下等于号
- (IBAction)equal:(UIButton *)sender {
    self.label.text = self.calcator.computeResult;
}

// 按下C键清除
- (IBAction)clear:(UIButton *)sender {
    self.label.text = nil;
    [self.calcator clearDisp];
}

// 按下Del键
- (IBAction)delete:(UIButton *)sender {
    long len = self.calcator.disp.length -1;
    if(len >= 0) {
        [self.calcator delNumber];
        self.label.text = self.calcator.disp;
    }
    
}

@end
