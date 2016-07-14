//
//  MyViewController.m
//  EPB_LiShi
//
//  Created by lanou3g on 16/7/13.
//  Copyright © 2016年 张鹏. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) UITableView *myTableView;
@property (strong, nonatomic) UIView *headerView; // 个人信息的头部视图
@property (strong, nonatomic) UIImageView *headImg;// 用户头像
@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    [self drawView];
    
}
// 画图
-(void)drawView{
    self.headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 80, WindownWidth, 100)];
    self.headerView.backgroundColor = [UIColor whiteColor];
    self.headImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 75, 75)];
    self.headImg.image = [UIImage imageNamed:@"welcome.jpg"];
    self.headImg.center = CGPointMake(self.headerView.center.x - 100, self.headerView.center.y);
    [self.headerView addSubview:self.headImg];
    self.myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 220, WindownWidth, WindowHeight - 189)];
    // 设置tableView代理
    self.myTableView.delegate = self;
    // 注册cell
    [self.myTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cellID"];
    
    
    [self.view addSubview:self.headerView];
    [self.view addSubview:self.myTableView];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark ------ myTableView的代理方法
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    return cell;
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
