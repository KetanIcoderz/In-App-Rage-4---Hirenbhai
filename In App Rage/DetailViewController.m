//
//  DetailViewController.m
//  In App Rage
//
//  Created by Ray Wenderlich on 9/5/12.
//  Copyright (c) 2012 Razeware LLC. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)viewWillAppear:(BOOL)animated {
    if (self.image) {
        self.imageView.image = self.image;
        self.label.text = @"";
    } else {
        self.imageView.image = nil;
        self.label.text = self.message;
    }
}

@end
