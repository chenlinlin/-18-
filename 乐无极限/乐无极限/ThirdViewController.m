//
//  ThirdViewController.m
//  乐无极限
//
//  Created by lanou3g on 16/4/15.
//  Copyright © 2016年 陈林林. All rights reserved.
//

#import "ThirdViewController.h"
#import "Header.h"
@interface ThirdViewController ()

@property(nonatomic,strong)UIView *vie11;


@property(nonatomic,strong)UIButton *but;
@property(nonatomic,strong)UIButton *but2;
@property(nonatomic,strong)UIButton *but3;
@property(nonatomic,strong)UIButton *but4;

@end

@implementation ThirdViewController
//控制器即将出现的时候
-(void)viewDidAppear:(BOOL)animated{
    self.view.backgroundColor =[UIColor yellowColor];
    self.but=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.but2=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.but3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.but4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];

    [self.but setImage:[UIImage imageNamed:@"4.png"] forState:UIControlStateNormal];
    self.but.frame =CGRectMake(80, -80, 80, 80);
    self.but.layer.cornerRadius=40;
    [self.view addSubview:self.but];
    
    [self.but2 setImage:[UIImage imageNamed:@"1.png"] forState:UIControlStateNormal];
    self.but2.frame = CGRectMake(100, -200, 80, 80);
    self.but2.layer.cornerRadius = 40;
    [self.view addSubview:self.but2];
    
    [self.but3 setImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateNormal];
    self.but3.frame = CGRectMake(160, 80, 80, 80);
    self.but3.layer.cornerRadius = 40;
    [self.view addSubview:self.but3];
    
    [self.but4 setImage:[UIImage imageNamed:@"3.png"] forState:UIControlStateNormal];
    self.but4.frame = CGRectMake(160, 160, 80, 80);
    self.but4.layer.cornerRadius = 40;
    [self.view addSubview:self.but4];
    
    //简单的动画效果
    [UIView animateWithDuration:0.4 animations:^{
        self.but.frame= CGRectMake(80, 300, 80, 80);
        self.but2.frame= CGRectMake(80, 500, 80, 80);
        self.but3.frame = CGRectMake(160, 200, 80, 80);
        self.but4.frame = CGRectMake(160, 400, 80, 80);
           } completion:^(BOOL finished) {
    }];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"3");
    self.navigationItem.title =@"第三个";
    [self.but addTarget:self action:@selector(butAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.but2 addTarget:self action:@selector(but2Action:) forControlEvents:UIControlEventTouchUpInside];
    [self.but3 addTarget:self action:@selector(but3Action:) forControlEvents:UIControlEventTouchUpInside];
    [self.but4 addTarget:self action:@selector(but4Action:) forControlEvents:UIControlEventTouchUpInside];
}


-(void)butAction:(UIButton *)sender{
    NSLog(@"1");
}

//控制器即将消失的时候
-(void)viewWillDisappear:(BOOL)animated{
    NSLog(@"走了; l");
    [self.but removeFromSuperview];
    [self.but2 removeFromSuperview];
    [self.but3 removeFromSuperview];
    [self.but4 removeFromSuperview];
}

@end
