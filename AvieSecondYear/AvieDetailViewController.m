//
//  AvieDetailViewController.m
//  AvieSecondYear
//
//  Created by Patrick Leonard on 11/11/12.
//  Copyright (c) 2012 Patrick Leonard. All rights reserved.
//

#import "AvieDetailViewController.h"

@interface AvieDetailViewController ()

@end

@implementation AvieDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _avieDetailPicture.image = [UIImage imageNamed:_avieDetailModel[0]];
    _avieDetailLabel.text = [NSString stringWithString:_avieDescriptionDetailModel[0]];
    _avieDetailHeader.title = [NSString stringWithString:_avieTitleDetailModel[0]];
/*
    //test code for video
    NSString *url = [[NSBundle mainBundle]
                     pathForResource:@"smooshyface"
                     ofType:@"mp4"];
    
    MPMoviePlayerViewController *playerViewController =
    [[MPMoviePlayerViewController alloc]
     initWithContentURL:[NSURL fileURLWithPath:url]];
    
    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector(movieFinishedCallback:)
     name:MPMoviePlayerPlaybackDidFinishNotification
     object:[playerViewController moviePlayer]];
    
    [self.view addSubview:playerViewController.view];
    
    //---play movie---
    MPMoviePlayerController *player = [playerViewController moviePlayer];
    [player play];
    
    // end test code for video
*/
}
/*
- (void) movieFinishedCallback:(NSNotification*) aNotification {
    MPMoviePlayerController *player = [aNotification object];
    [[NSNotificationCenter defaultCenter]
     removeObserver:self
     name:MPMoviePlayerPlaybackDidFinishNotification
     object:player];
    [player stop];
//    [self.view removeFromSuperView];
//    [player autorelease];
}
*/
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
