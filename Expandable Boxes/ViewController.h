//
//  ViewController.h
//  Expandable Boxes
//
//  Created by paradigm creatives on 10/31/14.
//  Copyright (c) 2014 Paradigm Creatives. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MaximizedViewController.h"

@interface ViewController : UIViewController<rootviewDelegate>

@property (strong, nonatomic) IBOutlet UILabel *topLabel;
@property (strong, nonatomic) IBOutlet UILabel *bottomLabel;
@property (strong, nonatomic) IBOutlet UIImageView *imgView;


@end

