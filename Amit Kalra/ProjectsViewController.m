//
//  ProjectsViewController.m
//  Amit Nivedan Kalra
//
//  Created by Amit Kalra on 8/13/14.
//  Copyright (c) 2014 Amit Kalra. All rights reserved.
//

/*

#import "ProjectsViewController.h"

@interface ProjectsViewController ()

@end

@implementation ProjectsViewController

//Animated Label

-(IBAction)changeText{
    
    AnimatedLabel.text = @"Amit Nivedan Kalra";
    
}

//Hide Button

-(IBAction)HideButton:(id)sender{
    
    HideButton.hidden = YES;
    AnimatedLabel.hidden = NO;
    
}

//Swipe

-(IBAction)SWIPE:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
    
}


- (void)viewDidLoad {
    
    
    //Scroller
    
    [Scroller setScrollEnabled:YES];
    [Scroller setContentSize:CGSizeMake(320, 5680)];
    
    //Animated Picture
    
    AnimatedPicture.animationImages = [NSArray arrayWithObjects:
                                       [UIImage imageNamed:@"ak.png"],
                                       [UIImage imageNamed:@"San Fran Selfie.jpg"],
                                       [UIImage imageNamed:@"Winter.jpg"],
                                       [UIImage imageNamed:@"Bike pic.jpg"],
                                       [UIImage imageNamed:@"India Selfie.jpg"],
                                       [UIImage imageNamed:@"Walmart fun.jpg"],
                                       [UIImage imageNamed:@"Photo Edit.jpg"],
                                       [UIImage imageNamed:@"Amit old icon.png"], nil];
    
    
    [AnimatedPicture setAnimationRepeatCount:0];
    AnimatedPicture.animationDuration = 3.5;
    [AnimatedPicture startAnimating];

    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

//ROBLOX Game

-(IBAction)ROBLOXGame:(id)sender {
    
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@"http://www.roblox.com/Parkour-City-place?id=102726507"]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


 
 I have a couple of projects that I'm working on..
 
 - Parkour City, a game I started on ROBLOX that I'm bringing to iOS.
 - Creating a crazy fun Santa game for children. (I think it'll be released next year)
 - Kalra Enterprises application for my family buisness, I want to help them out.
 
 
 


@end
 
 */
