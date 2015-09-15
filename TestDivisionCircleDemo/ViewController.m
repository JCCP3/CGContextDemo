//
//  ViewController.m
//  TestDivisionCircleDemo
//
//  Created by JC_CP3 on 15/9/15.
//  Copyright (c) 2015年 JC_CP3. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
#define M_PI 3.14159265358979323846264338327950288

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView
{
    self.view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidLoad {

    [super viewDidLoad];
    
    CustomView *customView = [[CustomView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    customView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:customView];

}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
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
