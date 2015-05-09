//
//  MenuViewController.m
//  Amit Nivedan Kalra
//
//  Created by Amit Kalra on 8/13/14.
//  Copyright (c) 2014 Amit Kalra. All rights reserved.
//

/*

#import "MenuViewController.h"


@interface MenuViewController ()

@property (strong, nonatomic) IBOutlet UILabel *titleLabel;

@property (strong, nonatomic) IBOutlet UIButton *restBtn;

@end

@implementation MenuViewController




//Animated Label

-(IBAction)changeText{
    
    AnimatedLabel.text = @"Amit Nivedan Kalra";
    
}

//Hide Button

-(IBAction)HideButton:(id)sender{
    
    HideButton.hidden = YES;
    AnimatedLabel.hidden = NO;
    
}

//Twitter

- (IBAction)Twitter:(id)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://twitter.com/amitnkalra"]];
    
}

//Website

-(IBAction)Website:(id)sender{
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://amitnkalra.github.io"]];
    
}

//Instagram

-(IBAction)Instagram:(id)sender {
    
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://instagram.com/amitnkalra"]];
}



//Facebook

-(IBAction)Facebook:(id)sender {
    
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://facebook.com/amitnkalra"]];
}

//GitHub

-(IBAction)GitHub:(id)sender {
    
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://github.com/amitnkalra"]];
    
}

- (void)viewDidLoad {

    [super viewDidLoad];

        
    //Animated Pictures
    
    AnimatedPicture.animationImages = [NSArray arrayWithObjects:
                                       [UIImage imageNamed:@"Amit Nivedan Kalra.jpg"],
                                       [UIImage imageNamed:@"San Fran Selfie.jpg"],
                                       [UIImage imageNamed:@"Winter.jpg"],
                                       [UIImage imageNamed:@"BMX.jpg"],
                                       [UIImage imageNamed:@"India Selfie.jpg"],
                                       [UIImage imageNamed:@"Walmart.jpg"],
                                       [UIImage imageNamed:@"Photo Edit.jpg"],
                                       [UIImage imageNamed:@"Beautiful.jpg"],
                                       [UIImage imageNamed:@"Amit Kalra Icon.png"],
                                       [UIImage imageNamed:@"Amit old icon.png"], nil];
    
    
    [AnimatedPicture setAnimationRepeatCount:0];
    AnimatedPicture.animationDuration = 5.0;
    [AnimatedPicture startAnimating];
    
   

    
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
 
 */
