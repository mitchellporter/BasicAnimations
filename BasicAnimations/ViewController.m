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
    
    
    
    [UIView animateWithDuration:1.0 animations:^{

        myView1.transform = CGAffineTransformMakeTranslation(myView1.bounds.origin.x, myView1.bounds.origin.y - 100);
        
    } completion:^(BOOL finished) {

    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
