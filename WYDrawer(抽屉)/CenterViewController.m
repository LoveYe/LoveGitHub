//
//  CenterViewController.m
//  WYDrawer(抽屉)
//
//  Created by qianfeng001 on 15/9/28.
//  Copyright (c) 2015年 王烨. All rights reserved.
//

#import "CenterViewController.h"
#import <MMDrawerController/UIViewController+MMDrawerController.h>

@interface CenterViewController ()

@end

@implementation CenterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatButton];
    self.view.backgroundColor = [UIColor redColor];
    // Do any additional setup after loading the view.
}
-(void)creatButton {
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]  initWithTitle:@"Left" style:UIBarButtonItemStylePlain target:self action:@selector(lelftAction:)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]  initWithTitle:@"Right" style:UIBarButtonItemStylePlain target:self action:@selector(rightAction:)];
}
-(void)lelftAction :(UIBarButtonItem *)barButtonItem {
    [self.mm_drawerController openDrawerSide:MMDrawerSideLeft animated:YES completion:^(BOOL finished) {
        
    }];
}
-(void)rightAction :(UIBarButtonItem *)barButtonItem {
    [self.mm_drawerController openDrawerSide:MMDrawerSideRight animated:YES completion:^(BOOL finished) {
        
    }];
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
