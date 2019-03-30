//
//  MViewController.m
//  UIView-Position
//
//  Created by wenluma on 03/30/2019.
//  Copyright (c) 2019 wenluma. All rights reserved.
//

#import "MViewController.h"
//#import <UIView+Position/UIView+Position.h>
#import "UIView+Position.h"

@interface MViewController ()

@end

@implementation MViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UILabel *lab = [[UILabel alloc] init];
    [self.view addSubview:lab];
    lab.marginInsets = UIEdgeInsetsMake(10, 80, 10, 80);
//    lab.marginTop = 80;
//    lab.marginLeft = 10;
//    lab.marginRight = 10;
//    lab.marginBottom = 80;
    lab.backgroundColor = [UIColor greenColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
