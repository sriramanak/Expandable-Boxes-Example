//
//  MaximizedViewController.h
//  Expandable Boxes
//
//  Created by paradigm creatives on 10/31/14.
//  Copyright (c) 2014 Paradigm Creatives. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol rootviewDelegate <NSObject>

-(void) callrootView;

@end


@interface MaximizedViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
- (IBAction)backButton:(UIButton *)sender;

@property(nonatomic,weak)id <rootviewDelegate>deleagate;

@end
