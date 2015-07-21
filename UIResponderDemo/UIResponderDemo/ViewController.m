//
//  ViewController.m
//  UIResponderDemo
//
//  Created by 曾凯 on 15-7-21.
//  Copyright (c) 2015年 曾凯. All rights reserved.
//

#import "ViewController.h"
#import "AdvancedView.h"

@interface UIButton (TouchUpInside)

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;

@end

@implementation UIButton (TouchUpInside)

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touchesEnded");
    [super touchesEnded:touches withEvent:event];
}

@end

@interface ViewController ()

@property (weak, nonatomic) AdvancedView *advancedView;

@end

@implementation ViewController

- (AdvancedView *)advancedView
{
    if (_advancedView == nil) {
        AdvancedView *view = [[AdvancedView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
        view.backgroundColor = [UIColor greenColor];
        [self.view addSubview:view];
        _advancedView = view;
    }
    return _advancedView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self advancedView];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 200, 100, 100);
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
