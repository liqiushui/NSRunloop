//
//  ViewController.m
//  NSTimerTest
//
//  Created by qqvipfunction on 17/3/18.
//  Copyright © 2017年 SZ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   NSTimer *timer = [NSTimer timerWithTimeInterval:0.001 repeats:YES block:^(NSTimer * _Nonnull timer) {
      
       static int timerCount = 0;
       //do nothing
       NSLog(@"timer do nothing, timerCount = %d", timerCount++);
   }];
    
   [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
    
    
    CADisplayLink *link = [CADisplayLink displayLinkWithTarget:self selector:@selector(update:)];
    [link addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSRunLoopCommonModes];

    
}


- (void)update:(id)sender
{
    static int linkCount = 0;
    NSLog(@"link do nothing, linkCount = %d", linkCount++);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
