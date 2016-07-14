//
//  ActivityViewController.m
//  EPB_LiShi
//
//  Created by lanou3g on 16/7/13.
//  Copyright © 2016年 张鹏. All rights reserved.
//

#import "ActivityViewController.h"
#import "ActivityTableViewCell.h"

@interface ActivityViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *ActivityTableView;



@end

@implementation ActivityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    
    
    [self.ActivityTableView registerNib:[UINib nibWithNibName:@"ActivityTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:ActivityTableViewCell_Identify];
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 243;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 10;
    
}

//-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
//    
//}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
    
    ActivityTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ActivityTableViewCell_Identify];
    
    return cell;
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
