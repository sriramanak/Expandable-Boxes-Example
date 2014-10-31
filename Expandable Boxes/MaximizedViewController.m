//
//  MaximizedViewController.m
//  Expandable Boxes
//
//  Created by paradigm creatives on 10/31/14.
//  Copyright (c) 2014 Paradigm Creatives. All rights reserved.
//

#import "MaximizedViewController.h"
#import "ViewController.h"

@interface MaximizedViewController ()

@end

@implementation MaximizedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backButton:(UIButton *)sender {
    
    NSLog(@"back button clicked");
    [self.deleagate callrootView];
    [self.navigationController popViewControllerAnimated:YES];
}
@end
