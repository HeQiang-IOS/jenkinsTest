//
//  ViewController.m
//  jenkinsTest
//
//  Created by 何强 on 2020/10/25.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // github webhook 花生壳
    // Do any additional setup after loading the view.
    UIView *v = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    v.backgroundColor = [UIColor redColor];
    [self.view addSubview:v];
    
    UIView *vv = [[UIView alloc] initWithFrame:CGRectMake(100, 210, 100, 100)];
    vv.backgroundColor = [UIColor blueColor];
    [self.view addSubview:vv];
}


@end
