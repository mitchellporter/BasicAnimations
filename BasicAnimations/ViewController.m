//
//  ViewController.m
//  BasicAnimations
//
//  Created by Mitchell Porter on 8/17/15.
//  Copyright (c) 2015 Mitchell Porter. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *myView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    myView1.center = self.view.center;
    myView1.backgroundColor = [UIColor redColor];
    [self.view addSubview:myView1];
    
    UIView *myView2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    myView2.center = self.view.center;
    myView2.backgroundColor = [UIColor blueColor];
    [self.view addSubview:myView2];
    myView2.hidden = YES;
    
    CABasicAnimation *anim = [CABasicAnimation animation];
    anim.keyPath = @"opacity";
    anim.repeatCount = 5;
    anim.autoreverses = YES;
    anim.fromValue = @(0.1);
    anim.toValue = @(1);
    anim.duration = 1;
    [myView1.layer addAnimation:anim forKey:@"myAnim"];


    [UIView animateWithDuration:3.0 animations:^{

        myView1.transform = CGAffineTransformConcat(CGAffineTransformMakeRotation(3.5), CGAffineTransformMakeScale(2.0, 2.0));

    } completion:^(BOOL finished) {

        myView1.transform = CGAffineTransformConcat(CGAffineTransformMakeRotation(-3.5), CGAffineTransformMakeScale(1.0, 1.0));
        
    }];
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
