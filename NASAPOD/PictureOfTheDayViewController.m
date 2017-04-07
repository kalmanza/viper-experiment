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
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *explanationHeight;

@end

@implementation PictureOfTheDayViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self showExplanation];
    [self configureTapGestureRecognizer];
    [self.eventHandler getPictureOfTheDay];
}

- (void)configureTapGestureRecognizer
{
    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self.eventHandler action:@selector(didTapImageView)];
    [self.imageView addGestureRecognizer:recognizer];
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

- (void)toggleExplanationDisplay
{
    if (self.explanationHeight.constant > 0) {
        [self hideExplanation];
    } else {
        [self showExplanation];
    }
}

- (void)hideExplanation
{
    [self animateExplanationHeightConstraint:0];
}

- (void)showExplanation
{
    [self animateExplanationHeightConstraint:self.view.bounds.size.height*0.4];
}

- (void)animateExplanationHeightConstraint:(CGFloat)newConstant
{
    [self updateExplanationHeightConstraint:newConstant];
    [UIView animateWithDuration:0.25 animations:^{
        [self.view layoutIfNeeded];
    }];
}

- (void)updateExplanationHeightConstraint:(CGFloat)newConstant
{
    [self.explanationHeight setConstant:newConstant];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
