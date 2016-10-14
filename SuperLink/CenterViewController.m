//
//  CenterViewController.m
//  SuperLink
//
//  Created by xzm on 16/10/13.
//  Copyright © 2016年 ypwl. All rights reserved.
//

#import "CenterViewController.h"
#import "YPContentViewController.h"
@interface CenterViewController ()<UITableViewDelegate,UITableViewDataSource>{
    
    
}

@end

@implementation CenterViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.title = @"中心";
    self.view.backgroundColor = [UIColor redColor];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(leftAction)];
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 20, kScreenWith, kScreenHeight - 20) style:UITableViewStylePlain];
    tableView.backgroundColor = [UIColor redColor];
    tableView.delegate = self;
    tableView.dataSource = self;
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:tableView];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.backgroundColor = [UIColor redColor];
    cell.textLabel.text = @"放虎归山的那就打死过机搜狗搜啊集发动机司法鉴定斯奥发戒掉撒娇歌度搜评价啊";
    
    return cell;
}
- (void)leftAction{
    
    if (self.ypContentViewController.side == YPSideLeft) {
        [self.ypContentViewController closeLeftViewController];
    }else{
        [self.ypContentViewController openLeftViewController];
    }
    
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
