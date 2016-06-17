//
//  ViewController.m
//  DianZanAnimation
//
//  Created by lly on 16/6/16.
//  Copyright © 2016年 lly. All rights reserved.
//

#import "ViewController.h"
#import "LoveView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dianZanBtnClicked:(id)sender {
    
    UIButton *btn = (UIButton *)sender;
    
    LoveView *view = [[LoveView alloc]initWithFrame:CGRectMake(btn.center.x-20 ,btn.center.y-20, 40, 40)];
    view.backgroundColor = [UIColor clearColor];
    [view drawRect:CGRectMake(btn.center.x-20 ,btn.center.y-20, 40, 40)];
    [view animationInView:self.view];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    UITouch *aTouch = [touches anyObject];
    CGPoint point = [aTouch locationInView:self.view];
    
    LoveView *view = [[LoveView alloc]initWithFrame:CGRectMake(point.x-20,point.y-20, 40, 40)];
    view.backgroundColor = [UIColor clearColor];
    [view drawRect:CGRectMake(point.x-20,point.y-20, 40, 40)];
    [view animationInView:self.view];
    
}

@end
