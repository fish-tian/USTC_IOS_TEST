#import "HealthViewController.h"
#import "Calculator+Health.h"
#import "Draw.h"

@interface HealthViewController()

@property (weak, nonatomic) IBOutlet UITextField *TxtHeight_310;
@property (weak, nonatomic) IBOutlet UITextField *TxtWeight_310;
@property (weak, nonatomic) IBOutlet UILabel *LabAdvice_310;
@property (weak, nonatomic) IBOutlet UILabel *LabScore_310;
@property (weak, nonatomic) IBOutlet UIButton *btn1_310;
@property (strong, nonatomic) Calculator *cal;
@property (strong, nonatomic) Draw* myview;

@end

@implementation HealthViewController
-(void) viewWillAppear:(BOOL)animated{
    [self.btn1_310.layer setMasksToBounds:YES];
    [self.btn1_310.layer setCornerRadius:12];
    [self.btn1_310.layer setBorderWidth:1];
    
}



-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    if(textField==self.TxtHeight_310 || textField==self.TxtWeight_310){
        [textField resignFirstResponder];
    }
    return YES;
}

-(Calculator *)cal{
    if(!_cal)
        _cal=[[Calculator alloc] init];
    return _cal;
    
}
- (IBAction)computeScore:(UIButton *)sender {
    NSLog(@"视图控制器");
    NSLog(@"%@", self.TxtHeight_310.text);
    NSString *score=[self.cal computeHeathWithHeight:self.TxtHeight_310.text andWeight:self.TxtWeight_310.text];
    if([score floatValue]<19)
        self.LabAdvice_310.text=@"太苗条啦，增加营养";
    else if([score floatValue]<25)
        self.LabAdvice_310.text=@"身材好棒";
    else if([score floatValue]<30)
        self.LabAdvice_310.text=@"有点发福，多锻炼哦";
    else if([score floatValue]<39)
        self.LabAdvice_310.text=@"有点胖了吃货，快点锻炼";
    else
        self.LabAdvice_310.text=@"再不减肥，你和死神有个约会";
    self.LabScore_310.text=score;
    
    [self.myview setHidden:false];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.cal=[[Calculator alloc] init];
    
//    self.draw = [[Draw alloc] init];
//    [self.view addSubview:self.draw];
//    //self.draw = [[Draw alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
//    self.view.backgroundColor = [UIColor whiteColor];
//
//    self.view.frame = CGRectMake(0, 90, 300, 500);
//    [self.draw setNeedsDisplay];
    
    self.myview = [[Draw alloc]initWithFrame:CGRectMake(50, 350, 300, 50)];
    self.myview.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:self.myview];
    [self.view sendSubviewToBack:self.myview];
    [self.myview setHidden:true];
    //[myview setNeedsDisplay];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}
@end
