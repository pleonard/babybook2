//
//  AvieDetailViewController.h
//  AvieSecondYear
//
//  Created by Patrick Leonard on 11/11/12.
//  Copyright (c) 2012 Patrick Leonard. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface AvieDetailViewController : UIViewController

@property (strong, nonatomic) NSArray *avieDetailModel;
@property (strong, nonatomic) NSArray *avieTitleDetailModel;
@property (strong, nonatomic) NSArray *avieDescriptionDetailModel;
@property (strong, nonatomic) NSArray *avieVideoModel;

@property (strong, nonatomic) IBOutlet UIImageView *avieDetailPicture;
@property (strong, nonatomic) IBOutlet UILabel *avieDetailLabel;
@property (strong, nonatomic) IBOutlet UINavigationItem *avieDetailHeader;

// Movie player
@property (strong, atomic) MPMoviePlayerController *moviePlayer;
- (IBAction)playMovie:(id)sender;

@end
