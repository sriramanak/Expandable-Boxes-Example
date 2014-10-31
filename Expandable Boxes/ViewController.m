//
//  ViewController.m
//  Expandable Boxes
//
//  Created by paradigm creatives on 10/31/14.
//  Copyright (c) 2014 Paradigm Creatives. All rights reserved.
//

#import "ViewController.h"
#import "MaximizedViewController.h"

@interface ViewController ()
@property (nonatomic,strong) MaximizedViewController *maximizedview;
@property(nonatomic,strong) UITextView *textview;
@property(nonatomic,strong ) UIImageView *imagview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _maximizedview=[[MaximizedViewController alloc]init];
    
    _maximizedview.deleagate=self;

    _topLabel.text=@"Apple Inc. is an American multinational corporation headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, computer software, online services, and personal computers. Its best-known hardware products are the Mac line of computers, the iPod media player, the iPhone smartphone, and the iPad tablet computer. Its online services include iCloud, iTunes Store, and App Store. Apple's consumer software includes the OS X and iOS operating systems, the iTunes media browser, the Safari web browser, and the iLife and iWork creativity and productivity suites.";
    
    _bottomLabel.text=@"Apple is the world's second-largest information technology company by revenue after Samsung Electronics, and the world's second-largest mobile phone maker after Samsung.[4] Fortune magazine named Apple the most admired company in the United States in 2008, and in the world from 2008 to 2012.[5][6][7][8][9] On September 30, 2013, Apple surpassed Coca-Cola to become the world's most valuable brand in the Omnicom Group's  report.[10] However, the company has received criticism for its contractors' labor practices, as well as for its own environmental and business practices.";
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    
    [_topLabel setUserInteractionEnabled:YES];
    UITapGestureRecognizer *toplabelTapped = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(showTopLabelData:)];
    [toplabelTapped setNumberOfTapsRequired:1];
    [_topLabel addGestureRecognizer:toplabelTapped];
    
    [_bottomLabel setUserInteractionEnabled:YES];
    UITapGestureRecognizer *bottomlabelTapped = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(showBottomLabelData:)];
    [bottomlabelTapped setNumberOfTapsRequired:1];
    [_bottomLabel addGestureRecognizer:bottomlabelTapped];

    [_imgView setUserInteractionEnabled:YES];
    UITapGestureRecognizer *imgviewTapped = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(showImage:)];
    [imgviewTapped setNumberOfTapsRequired:1];
    [_imgView addGestureRecognizer:imgviewTapped];

}

- (void)showTopLabelData:(UITapGestureRecognizer *)tapGesture {
    
    NSLog(@" top label cliekd");

    UITextView *textview=[[UITextView alloc]initWithFrame:CGRectMake(0,70,380,300)];
    textview.text=_topLabel.text;
    textview.scrollEnabled=YES;
    textview.pagingEnabled=YES;
    textview.editable=YES;
    [_maximizedview.view addSubview:textview];
    [self.view addSubview:_maximizedview.view];
    
    
}
- (void)showBottomLabelData:(UITapGestureRecognizer *)tapGesture {
    NSLog(@"bottom label cliekd");
   
    
    UITextView *textview=[[UITextView alloc]initWithFrame:CGRectMake(0,70,380,300)];
    textview.text=_bottomLabel.text;
    textview.scrollEnabled=YES;
    textview.pagingEnabled=YES;
    textview.editable=YES;
    [_maximizedview.view addSubview:textview];
    [self.view addSubview:_maximizedview.view];
    
    
}

- (void)showImage:(UITapGestureRecognizer *)tapGesture {
    NSLog(@"image view cliekd");
    
    UIImageView *img=[[UIImageView alloc]initWithFrame:CGRectMake(0, 70, 380, 300)];
    img.image=_imgView.image;
    [_maximizedview.view addSubview:img];
    [self.view addSubview:_maximizedview.view];
    
}

-(void)callrootView
{
    [self.maximizedview.view removeFromSuperview];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
