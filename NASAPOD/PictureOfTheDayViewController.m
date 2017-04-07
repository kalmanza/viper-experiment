//
//  ViewController.m
//  NASAPOD
//
//  Created by Kevin Almanza on 4/5/17.
//  Copyright © 2017 Kevin Almanza. All rights reserved.
//

#import "PictureOfTheDayViewController.h"
#import "PODPictureService.h"
#import "PictureOfTheDay.h"

@interface PictureOfTheDayViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *pictureTitle;
@property (weak, nonatomic) IBOutlet UILabel *pictureDate;
@property (weak, nonatomic) IBOutlet UITextView *pictureExplanation;

@end

@implementation PictureOfTheDayViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.eventHandler getPictureOfTheDay];
}

- (void)setPictureDateText:(NSString *)dateString
{
    [self.pictureDate setText:dateString];
}

- (void)setPictureTitleText:(NSString *)title
{
    [self.pictureTitle setText:title];
}

- (void)setPictureExplanationText:(NSString *)explanation
{
    [self.pictureExplanation setText:explanation];
}

- (void)setPictureOfTheDay:(UIImage *)pictureOfTheDay
{
    if (!pictureOfTheDay) {
        NSLog(@"no image returned to controller");
        return;
    }
    [self.imageView setImage:pictureOfTheDay];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
