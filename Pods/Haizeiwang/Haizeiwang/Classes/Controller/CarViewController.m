//
//  CarViewController.m
//  DemoFramework
//
//  Created by 何强 on 2020/10/27.
//

#import "CarViewController.h"
#import "CarModel.h"
#import "CarTableViewCell.h"

@interface CarViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataMutableArray;
@end

@implementation CarViewController

- (UITableView *)tableView{
    if (_tableView == nil) {
        _tableView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
        
        _tableView.delegate = self;//遵循协议
        _tableView.dataSource = self;//遵循数据源
    }
    return _tableView;
}

- (NSMutableArray *)dataMutableArray {
    if(_dataMutableArray == nil) {
        _dataMutableArray = [[NSMutableArray alloc] initWithCapacity:10];
    }
    return _dataMutableArray;
}
- (void)back {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [UITableView appearance].estimatedRowHeight = 0;

    [UITableView appearance].estimatedSectionHeaderHeight = 0;

    [UITableView appearance].estimatedSectionFooterHeight = 0;
    
    self.navigationItem.title = @"CarView";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(back)];

    NSBundle *bundle = [NSBundle bundleForClass:[CarTableViewCell class]];
    NSLog(@"%@",bundle);
    [self.tableView registerNib:[UINib nibWithNibName:@"CarTableViewCell" bundle:bundle] forCellReuseIdentifier:@"CarTableViewCellID"];
   
    
    NSDictionary *dic = @{
        @"name":@"AA",
        @"price":@"10W"
    };
    NSMutableArray *tempMutableArr = [NSMutableArray arrayWithCapacity:10];
    for (int i=0; i<10; i++) {
        [tempMutableArr addObject:dic];
    }
    
    [self.dataMutableArray removeAllObjects];
    for (NSDictionary *tempDic in tempMutableArr) {
        CarModel *carModel = [[CarModel alloc] initWithDictionary:tempDic error:nil];
        [self.dataMutableArray addObject:carModel];
    }
    [self.view addSubview:self.tableView];

    
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataMutableArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CarTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"CarTableViewCellID"];
    [cell showCellForCarModel:self.dataMutableArray[indexPath.row]];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80.0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor yellowColor];
    vc.title = @"122";
    [self.navigationController pushViewController:vc animated:YES];
}

@end
