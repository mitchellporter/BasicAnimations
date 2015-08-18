//
//  ViewController.m
//  BasicAnimations
//
//  Created by Mitchell Porter on 8/17/15.
//  Copyright (c) 2015 Mitchell Porter. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UIView *myView1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.myView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    self.myView1.center = self.view.center;
    self.myView1.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.myView1];
    
    // How come if we use bounds the animation happens the way you think it should,
    // but if we use frame the animation doesn't do what we want it to?
    
    [self compoundTransform];
}

- (void)rotate
{
    [UIView animateWithDuration:1.0 animations:^{
        
        self.myView1.transform = CGAffineTransformMakeRotation(10.0);
        
    } completion:^(BOOL finished) {
        
        self.myView1.transform = CGAffineTransformIdentity;
        
        [self rotate];
    }];
}

- (void)compoundTransform
{
    [UIView animateWithDuration:1.0 animations:^{
        //
        //create a new transform
        CATransform3D transform = CATransform3DIdentity; //apply perspective
        transform.m34 = - 1.0 / 500.0; //rotate by 45 degrees along the Y axis
        transform = CATransform3DRotate(transform, M_PI_4, 0, 1, 0);
        //apply to layer
        self.myView1.layer.transform = transform;
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
