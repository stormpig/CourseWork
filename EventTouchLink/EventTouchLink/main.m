//
//  main.m
//  EventTouchLink
//
//  Created by 曾凯 on 15-7-21.
//  Copyright (c) 2015年 曾凯. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@implementation AppDelegate (EXT)

#pragma mark - 点击事件

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    NSLog(@"touchesBegan: %@", [self class]);
}

@end

@implementation UIView (EXT)

#pragma mark - 点击事件

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touchesBegan: %@", [self class]);
    [super touchesBegan:touches withEvent:event];
}

@end

@implementation UIButton (EXT)

#pragma mark - 点击事件

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touchesBegan: %@", [self class]);
    [super touchesBegan:touches withEvent:event];
}

@end

int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
