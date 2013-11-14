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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
