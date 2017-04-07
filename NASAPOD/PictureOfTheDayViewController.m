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
#import <SDWebImage/SDImageCache.h>
#import <UIImageView+WebCache.h>

@interface PictureOfTheDayViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation PictureOfTheDayViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.eventHandler getPictureOfTheDay];
}

- (void)setPictureTitle:(NSString *)title
{
    
}

- (void)setPictureExplanation:(NSString *)explanation
{
    
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
