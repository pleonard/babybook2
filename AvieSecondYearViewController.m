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
    _avieImageAugust.image = [UIImage imageNamed:@"aug_dillon_hiking_thumb.jpg"];
    _avieImageSeptember.image = [UIImage imageNamed:@"sep_ducks_thumb.jpg"];
    _avieImageOctober.image = [UIImage imageNamed:@"oct_waving_thumb.jpg"];
    _avieImageNovember.image = [UIImage imageNamed:@"nov_pigtails_thumb.jpg"];
    _avieImageDecember.image = [UIImage imageNamed:@"dec_snowball_thumb.jpg"];
    
    // create array of images for use in detail view controller
    _avieMonthTitles = @[@"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December", @"January", @"February"];
    _avieImages = @[@"mar_first_birthday.jpg", @"apr_walking_park.jpg", @"may_comedy.jpg", @"jun_marigolds.jpg", @"jul_ellie_birthday.jpg", @"aug_dillon_hiking.jpg", @"sep_ducks.jpg", @"oct_waving.jpg", @"nov_pigtails.jpg", @"dec_snowball.jpg"
    ];
    _avieDescriptions = @[
        @"Mommy threw Avie an amazing first birthday party full of family and friends and with the theme of Hungry Little Caterpillar. When it came time for cake, our little health nut tried one bite then went back to her pasta and veggies.",
        @"Avie loves being outside so much that as soon as she started walking on her own she took off across the park. We were so surprised that she was 30 yards away before Mommy started chasing after.",
        @"Early on Avie figured out that she is hilarious and she loves cracking Mommy and Daddy up. After the sunglasses came the famous 'Smooshyface'.",
        @"Marigolds, beware! Avie loves the smell of marigolds and spent the whole summer picking and smelling them. Good thing they're cheap and we grew a lot of them.",
        @"We headed to Austin to celebrate cousin Ellie's first birthday. Avie and Ellie bonded, and now when Avie makes a pretend phone call she says 'Hi Ellie'.",
        @"One of Avie's early words was 'hiking'. We spent a lot of time in the mountains this summer, hiking with Avie and at the condo in Dillon. She loves hiking and being outdoors.",
        @"Mommy and Avie spent many summer days walking to the lake in Wash Park to feed the ducks. Avie loves feeding the ducks in Wash Park. Daddy got to go sometimes too, what a great way to spend the day.",
        @"Leaving Avie to go to work every morning is hard but watching her wave goodbye is the best send off ever. Even when it's cold out, she comes outside to wave. It's just the best.",
        @"It's exciting to see Avie growing and learning so fast, but sometimes it feels a little too fast. As she grows to become the amazing person we know she is going to be, Mommy and Daddy will always think of Avie as the sweet, smart, funny little girl in pigtails.",
        @"We didn't get much snow in December but Avie quickly learned to make and throw snowballs and to 'hop in the snow'. She looks out the window every morning to see if there is snow."
    ];

    // create array of videos for use in detail view controller
    _avieVideos = @[@"https://sites.google.com/site/patrickjleonard/videos/mar_birthday.mov", @"https://sites.google.com/site/patrickjleonard/videos/apr_walking.mp4", @"https://sites.google.com/site/patrickjleonard/videos/may_smooshy.MOV", @"https://sites.google.com/site/patrickjleonard/videos/jun_summer.mp4", @"https://sites.google.com/site/patrickjleonard/videos/jul_ellie.mp4", @"https://sites.google.com/site/patrickjleonard/videos/aug_hiking.mp4", @"https://sites.google.com/site/patrickjleonard/videos/sep_ducks.MOV", @"https://sites.google.com/site/patrickjleonard/videos/oct_bike.MOV", @"https://sites.google.com/site/patrickjleonard/videos/nov_sidewalk.MOV", @"https://sites.google.com/site/patrickjleonard/videos/dec_ball.MOV", @"January", @"February"];
    
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
        detailViewController.avieVideoModel = @[_avieVideos[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowApril"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 1;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieVideoModel = @[_avieVideos[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowMay"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 2;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieVideoModel = @[_avieVideos[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowJune"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 3;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieVideoModel = @[_avieVideos[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowJuly"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 4;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieVideoModel = @[_avieVideos[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowAugust"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 5;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieVideoModel = @[_avieVideos[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowSeptember"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 6;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieVideoModel = @[_avieVideos[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowOctober"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 7;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieVideoModel = @[_avieVideos[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowNovember"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 8;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieVideoModel = @[_avieVideos[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowDecember"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 9;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieVideoModel = @[_avieVideos[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }

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
