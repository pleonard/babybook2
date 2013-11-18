//
//  AvieSecondYearViewController.m
//  AvieSecondYear
//
//  Created by Patrick Leonard on 11/10/12.
//  Copyright (c) 2012 Patrick Leonard. All rights reserved.
//

#import "AvieSecondYearViewController.h"
#import "AvieDetailViewController.h"

@interface AvieSecondYearViewController ()

@end

@implementation AvieSecondYearViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    _avieImageMarch.image = [UIImage imageNamed:@"mar_first_birthday_thumb.jpg"];
    _avieImageApril.image = [UIImage imageNamed:@"apr_walking_park_thumb.jpg"];
    _avieImageMay.image = [UIImage imageNamed:@"may_comedy_thumb.jpg"];
    _avieImageJune.image = [UIImage imageNamed:@"jun_marigolds_thumb.jpg"];
    _avieImageJuly.image = [UIImage imageNamed:@"jul_ellie_birthday_thumb.jpg"];
    _avieImageAugust.image = [UIImage imageNamed:@"aug_hair_thumb.jpg"];
    _avieImageSeptember.image = [UIImage imageNamed:@"sep_laugh_yard_thumb.jpg"];
    _avieImageOctober.image = [UIImage imageNamed:@"oct_lobster_thumb.jpg"];
    _avieImageNovember.image = [UIImage imageNamed:@"nov_bath_mohawk_thumb.jpg"];
    _avieImageDecember.image = [UIImage imageNamed:@"dec_walker_thumb.jpg"];
    
    // create array of images for use in detail view controller
    _avieMonthTitles = @[@"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December", @"January", @"February"];
    _avieImages = @[@"mar_first_birthday.jpg", @"apr_walking_park.jpg", @"may_comedy.jpg", @"jun_marigolds.jpg", @"jul_ellie_birthday.jpg", @"aug_hair_large.jpg", @"sep_laugh_yard.jpg", @"oct_lobster_large.jpg", @"nov_bath_mohawk.jpg", @"dec_walker.jpg"
    ];
    _avieDescriptions = @[
        @"Mommy threw Avie an amazing first birthday party full of family and friends and with the theme of Hungry Little Caterpillar. When it came time for cake, our little health nut tried one bite then went back to her pasta and veggies.",
        @"Avie loves being outside so much that as soon as she started walking on her own she took off across the park. We were so surprised that she was 30 yards away before Mommy started chasing after.",
        @"Early on Avie figured out that she is hilarious and she loves cracking Mommy and Daddy up.",
        @"Marigolds, beware! Avie loves the smell of marigolds and spent the whole summer picking and smelling them. Good thing they're cheap and we grew a lot of them.",
        @"We headed to Austin to celebrate cousin Ellie's first birthday. Avie and Ellie bonded, and now when Avie makes a pretend phone call she says 'Hi Ellie'.",
        @"aug",
        @"sept",
        @"oct - ducks",
        @"nov",
        @"dec"
    ];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
    int row = [myIndexPath row];
    row = 0;
    
    if ([[segue identifier] isEqualToString:@"ShowMarDetails"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 0;
        detailViewController.avieTitleDetailModel = _avieMonthTitles[row];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowMarch"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 0;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowApril"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 1;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowMay"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 2;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowJune"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 3;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowJuly"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 4;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowAugust"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 5;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowSeptember"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 6;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowOctober"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 7;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowNovember"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 8;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowDecember"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 9;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
/*
    else if ([[segue identifier] isEqualToString:@"ShowAprDetails"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 1;
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowMayDetails"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 2;
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowJunDetails"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 3;
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowJulDetails"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 4;
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowAugDetails"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 5;
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowSepDetails"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 6;
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowOctDetails"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 7;
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowNovDetails"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 8;
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
*/
}

#pragma mark - Table view data source

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
