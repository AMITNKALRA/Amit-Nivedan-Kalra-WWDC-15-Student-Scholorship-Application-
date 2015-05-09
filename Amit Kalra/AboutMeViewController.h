//
//  AboutMeViewController.h
//  Amit Nivedan Kalra
//
//  Created by Amit Kalra on 8/13/14.
//  Copyright (c) 2014 Amit Kalra. All rights reserved.
//

/*

#import <UIKit/UIKit.h>

//Importing Maps

#import <MapKit/MapKit.h>

//Import Audio

#import <AudioToolbox/AudioToolbox.h>



@interface AboutMeViewController : UIViewController { //<MKMapViewDelegate>
    
    //Animated Picture
    
    IBOutlet UIImageView *AnimatedPicture;


    //Scroller Outlet
    
    IBOutlet UIScrollView *Scroller;
    
    //Pictures Outlet
    
    IBOutlet UIScrollView *Pictures;
    
    
    //Normal Button
    
    IBOutlet UIButton *NormalButton;
    
    //Normal Label
    
    IBOutlet UILabel *Name;
    
    //Audio
    
    SystemSoundID aboutMe;

    
}



//Birthday properties

@property (nonatomic, retain) NSDate *birthday;
@property (weak, nonatomic) IBOutlet UILabel *yearsLabel;
@property (weak, nonatomic) IBOutlet UILabel *monthsLabel;
@property (weak, nonatomic) IBOutlet UILabel *daysLabel;
@property (weak, nonatomic) IBOutlet UILabel *hoursLabel;
@property (weak, nonatomic) IBOutlet UILabel *minutesLabel;
@property (weak, nonatomic) IBOutlet UILabel *secondsLabel;


//Location property
    
@property (weak, nonatomic) IBOutlet MKMapView *residenceMapView;
- (IBAction)residenceMapViewLongPressGestureRecognizer:(id)sender;


//Wikipedia

- (IBAction)Wikipedia:(id)sender;

//ROBLOX Developer

- (IBAction)ROBLOXDev:(id)sender;

//ROBLOX

-(IBAction)ROBLOX:(id)sender;

//Swipe Back

-(IBAction)SWIPE:(id)sender;

//Audio

-(IBAction)aboutMe:(id)sender;









/*
 
 I know, I'm late to the developer party, but hey, it's better LATE than NEVER! Here's a list of Apple devices I own.
 
 - iPhone 2G (It got put in the laundry by accident. I was a irrisponsible 7 year old.)
 - iPod touch 4th generation (My first Apple Product I purchased!)
 - iPod touch 5th generation (I started getting interested into programming with this device.)
 - iPhone 5 (This was a gift from my brother and within this device I discovered jailbreaking.
 - iPhone 5s (I develop on this now, this is also my main device!)
 - MacBook Air (11-inch, Mid 2013) (I use this for development.)
 - iPhone 6 (I returned this device just because the screen size was too big for me! I think the iPhone 5s is perfect.)
 
 Current Devices:
 - Factory Unlocked Space Gray 16GB iPhone 5s (My Daily Driver)
 - MacBook Air (11-inch, Mid 2013)
 -  Watch
 
 Products I'm planning to purchase:
 - iPhone 6s Plus? I'm probably going to need it for development.(The iPhone 6 Plus simuator doesn't fit on my screen :c)
 - Macbook Pro w/ Retina HD Display (Space Gray)
 




@end

 */


    


