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
    
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    myView.center = self.view.center;
    myView.backgroundColor = [UIColor redColor];
    [self.view addSubview:myView];
    
//    [UIView animateWithDuration:1.0 animations:^{
//        // Change the opacity implicitly.
//        myView.layer.opacity = 0.0;
//        
//        // Change the position explicitly.
//        CABasicAnimation* theAnim = [CABasicAnimation animationWithKeyPath:@"position"];
//        theAnim.fromValue = [NSValue valueWithCGPoint:myView.layer.position];
//        theAnim.toValue = [NSValue valueWithCGPoint:myNewPosition];
//        theAnim.duration = 3.0;
//        [myView.layer addAnimation:theAnim forKey:@"AnimateFrame"];
//    }];
    
    
    CABasicAnimation *theAnim = [CABasicAnimation animationWithKeyPath:@"position"];
    theAnim.fromValue = [NSValue valueWithCGPoint:myView.layer.position];
    theAnim.toValue = [NSValue valueWithCGPoint:CGPointMake(myView.layer.position.x, myView.layer.position.y - 50)];
    theAnim.duration = 3.0;
    [myView.layer addAnimation:theAnim forKey:@"AnimateFrame"];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
