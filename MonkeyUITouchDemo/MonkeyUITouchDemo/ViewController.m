//
//  ViewController.m
//  MonkeyUITouchDemo
//
//  Created by 曾凯 on 15-7-21.
//  Copyright (c) 2015年 曾凯. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@property (weak, nonatomic) UIImageView *monkey;
@property (strong, nonatomic) AVAudioPlayer *player;

@property (assign, nonatomic) NSUInteger tapCount;
@property (assign, nonatomic) NSDate *tapBeginTime;
@end

@implementation ViewController

#pragma mark - Getter

- (UIImageView *)monkey
{
    if (_monkey == nil) {
        UIImageView *view = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        view.image = [UIImage imageNamed:@"monkey"];
        [self.view addSubview:view];
        _monkey = view;
    }
    return _monkey;
}

- (AVAudioPlayer *)player
{
    if (_player == nil) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"tickleSound" ofType:@"wav"];
        NSURL *URL = [NSURL fileURLWithPath:path];
        _player  = [[AVAudioPlayer alloc] initWithContentsOfURL:URL error:nil];
    }
    return _player;
}

#pragma mark - Touch 点击事件

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (touches.count == 1) {
        [self.player play];
        UITouch *touch = touches.anyObject;
        self.monkey.center = [touch locationInView:self.view];
    
    }
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (touches.count == 1) {
        UITouch *touch = touches.anyObject;
        self.monkey.center = [touch locationInView:self.view];
    }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (touches.count == 1) {
    }
}

#pragma mark - 其他方法

// 重置记录变量
-

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self monkey];
    self.view.multipleTouchEnabled = NO;
    CGRect
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
