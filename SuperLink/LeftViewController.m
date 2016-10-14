//
//  LeftViewController.m
//  SuperLink
//
//  Created by xzm on 16/10/13.
//  Copyright © 2016年 ypwl. All rights reserved.
//

#import "LeftViewController.h"
#import "YPContentViewController.h"

@interface LeftViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation LeftViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 20, kScreenWith*0.8, kScreenHeight - 20) style:UITableViewStylePlain];
    tableView.backgroundColor = [UIColor orangeColor];
    tableView.delegate = self;
    tableView.dataSource = self;
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 8;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.backgroundColor = [UIColor orangeColor];
    cell.textLabel.text = @"放虎归山的那就打死过机搜狗搜啊集发动机司法鉴定斯奥发戒掉撒娇歌度搜评价啊";
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
