//
//  RandomFaceViewController.m
//  In App Rage
//
//  Created by Ray Wenderlich on 10/5/12.
//  Copyright (c) 2012 Razeware LLC. All rights reserved.
//

#import "RandomFaceViewController.h"

@interface RandomFaceViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation RandomFaceViewController

- (IBAction)buttonTapped:(id)sender {
    int randomIdx = (arc4random() % 4) + 1;
    NSString * randomName = [NSString stringWithFormat:@"random%d.png", randomIdx];
    self.imageView.image = [UIImage imageNamed:randomName];
}

@end
