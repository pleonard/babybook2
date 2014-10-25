//
//  AvieSecondYearViewController.h
//  AvieSecondYear
//
//  Created by Patrick Leonard on 11/10/12.
//  Copyright (c) 2012 Patrick Leonard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AvieSecondYearViewController : UITableViewController
@property (strong, nonatomic) NSArray *avieMonthTitles;
@property (strong, nonatomic) NSArray *avieImages;
@property (strong, nonatomic) NSArray *avieVideos;
@property (strong, nonatomic) NSArray *avieDescriptions;

@property (strong, nonatomic) IBOutlet UIImageView *avieImageMarch;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageApril;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageMay;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageJune;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageJuly;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageAugust;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageSeptember;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageOctober;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageNovember;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageDecember;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageJanuary;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageFebruary;

@end
