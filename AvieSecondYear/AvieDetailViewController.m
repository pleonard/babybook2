//
//  AvieDetailViewController.m
//  AvieSecondYear
//
//  Created by Patrick Leonard on 11/11/12.
//  Copyright (c) 2012 Patrick Leonard. All rights reserved.
//

#import "AvieDetailViewController.h"

@interface AvieDetailViewController ()
- (IBAction)playMovie:(id)sender;

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

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)playMovie:(id)sender {
    
    { NSURL *url = [NSURL URLWithString: @"https://sites.google.com/site/patrickjleonard/videos/oct_smooshy.MOV"];
        /*
         
         { NSURL *url = [NSURL URLWithString: @"http://www.ebookfrenzy.com/ios_book/movie/movie.mov"];
         */
        _moviePlayer = [[MPMoviePlayerController alloc]  initWithContentURL:url];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(moviePlayBackDidFinish:)
            name:MPMoviePlayerPlaybackDidFinishNotification
            object:_moviePlayer];
        
        _moviePlayer.controlStyle = MPMovieControlStyleDefault;
        _moviePlayer.shouldAutoplay = YES;
        [self.view addSubview:_moviePlayer.view];
        [_moviePlayer setFullscreen:YES animated:YES]; }
    
}

- (void) moviePlayBackDidFinish:(NSNotification*)notification {
    MPMoviePlayerController *player = [notification object];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self
        name:MPMoviePlayerPlaybackDidFinishNotification object:player];
    
    if ([player
         respondsToSelector:@selector(setFullscreen:animated:)])
    {
        [player.view removeFromSuperview];
    }
}

@end
