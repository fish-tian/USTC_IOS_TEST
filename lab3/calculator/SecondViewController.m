#import "SecondViewController.h"

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UITextField *txtdisplay_310;
@property (weak, nonatomic) IBOutlet UIButton *btnleft_310;
@property (weak, nonatomic) IBOutlet UIButton *btnright_310;
@property (weak, nonatomic) IBOutlet UIButton *btne_310;
@property (weak, nonatomic) IBOutlet UIButton *btnpi_310;

@end

@implementation SecondViewController
- (IBAction)inputKey:(UIButton *)sender {
    if(sender.tag==0||sender.tag==1||sender.tag==2||sender.tag==3){
        NSMutableString *str=[NSMutableString stringWithString:self.txtdisplay_310.text];
        if([[[sender titleLabel] text] isEqualToString:@"e"]){
            [self.cal.disp appendString:@"2.71828"];
        }
        else if ([[[sender titleLabel] text] isEqualToString:@"pi"]){
            [self.cal.disp appendString:@"3.1415926"];
        }
        else{
            [self.cal.disp appendString:[[sender titleLabel] text]];
        }
        [str appendString:[[sender titleLabel] text]];
        self.txtdisplay_310.text=str;
        self.cal.screen=str;
    }
    if(sender.tag==4){
        if([[[sender titleLabel] text] isEqualToString:@"abs"]) {
            self.cal.disp=[NSMutableString stringWithString:[self.cal abs:[self.cal computedResult]]];
        } else if ([[[sender titleLabel] text] isEqualToString:@"sqrt"]) {
            self.cal.disp=[NSMutableString stringWithString:[self.cal sqrt:[self.cal computedResult]]];
        } else if([[[sender titleLabel] text] isEqualToString:@"1/x"]) {
            self.cal.disp=[NSMutableString stringWithString:[self.cal onedx:[self.cal computedResult]]];
        } else if([[[sender titleLabel] text] isEqualToString:@"x^2"]) {
            self.cal.disp=[NSMutableString stringWithString:[self.cal x2:[self.cal computedResult]]];
        } else if([[[sender titleLabel] text] isEqualToString:@"x^3"]) {
            self.cal.disp=[NSMutableString stringWithString:[self.cal x3:[self.cal computedResult]]];
        } else if([[[sender titleLabel] text] isEqualToString:@"sin"]) {
            self.cal.disp=[NSMutableString stringWithString:[self.cal sin:[self.cal computedResult]]];
        } else if([[[sender titleLabel] text] isEqualToString:@"cos"]) {
            self.cal.disp=[NSMutableString stringWithString:[self.cal cos:[self.cal computedResult]]];
        } else if([[[sender titleLabel] text] isEqualToString:@"tan"]) {
            self.cal.disp=[NSMutableString stringWithString:[self.cal tan:[self.cal computedResult]]];
        } else if([[[sender titleLabel] text] isEqualToString:@"asin"]) {
            self.cal.disp=[NSMutableString stringWithString:[self.cal asin:[self.cal computedResult]]];
        } else if([[[sender titleLabel] text] isEqualToString:@"acos"]) {
            self.cal.disp=[NSMutableString stringWithString:[self.cal acos:[self.cal computedResult]]];
        } else if([[[sender titleLabel] text] isEqualToString:@"atan"]) {
            self.cal.disp=[NSMutableString stringWithString:[self.cal atan:[self.cal computedResult]]];
        } else if([[[sender titleLabel] text] isEqualToString:@"ln"]) {
            self.cal.disp=[NSMutableString stringWithString:[self.cal ln:[self.cal computedResult]]];
        } else if([[[sender titleLabel] text] isEqualToString:@"sinh"]) {
            self.cal.disp=[NSMutableString stringWithString:[self.cal sinh:[self.cal computedResult]]];
        } else if([[[sender titleLabel] text] isEqualToString:@"cosh"]) {
            self.cal.disp=[NSMutableString stringWithString:[self.cal cosh:[self.cal computedResult]]];
        } else if([[[sender titleLabel] text] isEqualToString:@"tanh"]) {
            self.cal.disp=[NSMutableString stringWithString:[self.cal tanh:[self.cal computedResult]]];
        } else if([[[sender titleLabel] text] isEqualToString:@"log"]) {
            self.cal.disp=[NSMutableString stringWithString:[self.cal log:[self.cal computedResult]]];
        }
        
        self.cal.screen=self.cal.disp;
        self.txtdisplay_310.text=self.cal.screen;
    }
}

-(void) viewWillAppear:(BOOL)animated{
    self.txtdisplay_310.text = self.cal.screen;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
