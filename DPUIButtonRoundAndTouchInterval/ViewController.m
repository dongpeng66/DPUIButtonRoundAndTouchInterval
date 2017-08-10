//
//  ViewController.m
//  DPUIButtonRoundAndTouchInterval
//
//  Created by 人众 on 2017/8/10.
//
//

#import "ViewController.h"
#import "RZRoundedButton.h"
#import "UIButton+RZTouchInterval.h"
@interface ViewController (){
    NSInteger count;
}
@property (nonatomic, strong) UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor whiteColor];
    RZRoundedButton *button = [[RZRoundedButton alloc] initWithFrame:CGRectMake(100, 100, 100, 30) withRoundedType:RoundedTypeAllCorners];
    
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
    
    
    
    count = 0;
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    //    btn.timeInterval = 2;
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    //
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(50, 320, 200, 30)];
    self.label.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.label];

}
- (void)btnClick:(UIButton *)button {
    
    count++;
    NSLog(@"%@", [NSString stringWithFormat:@"点击了按钮--- count = %zd", count]);
    self.label.text = [NSString stringWithFormat:@"点击了按钮--- count = %zd", count];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
