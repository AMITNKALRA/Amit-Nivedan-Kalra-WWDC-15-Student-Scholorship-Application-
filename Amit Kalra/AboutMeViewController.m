//
//  AboutMeViewController.m
//  Amit Nivedan Kalra
//
//  Created by Amit Kalra on 8/13/14.
//  Copyright (c) 2014 Amit Kalra. All rights reserved.
//

/*

#import "AboutMeViewController.h"

@interface AboutMeViewController ()
    

@end

@implementation AboutMeViewController

-(IBAction)aboutMe:(id)sender {
    
    
    AudioServicesPlaySystemSound(aboutMe);
    
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    //Audio
    
    NSURL *AboutMeURL =[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"test" ofType:@"m4a"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)AboutMeURL, & aboutMe);
   
    
    // Birthday label
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MM-dd-yyyy"];
    NSDate *today = [NSDate date];
    NSDate *birthday = [[NSDate alloc] init];
    birthday = [dateFormatter dateFromString:@"12-19-1999"];
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *components = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay
                                               fromDate:birthday
                                                 toDate:today
                                                options:0];
    self.yearsLabel.text = [NSString stringWithFormat:@"%li years,", (long)components.year];
    self.monthsLabel.text = [NSString stringWithFormat:@"%li months,  and", (long)components.month];
    self.daysLabel.text = [NSString stringWithFormat:@"%li days YOUNG.", (long)components.day];
    self.hoursLabel.text = [NSString stringWithFormat:@"%li hours," , (long)components.hour];
    //I'll see if I want to use these later. Hmm
    self.minutesLabel.text = [NSString stringWithFormat:@"%li minutes, and" , (long)components.minute];
    self.secondsLabel.text = [NSString stringWithFormat:@"%li seconds YOUNG!", (long)components.second];
    
 
    
    //Scroller 

    [Scroller setScrollEnabled:YES];
    [Scroller setContentSize:CGSizeMake(320, 6500)];
    
    //Pictures
    
    [Pictures setScrollEnabled:YES];
    [Pictures setContentSize:CGSizeMake(2510, 5)];
    
    //Animated Pictures
    
    AnimatedPicture.animationImages = [NSArray arrayWithObjects:
                                       [UIImage imageNamed:@"Eastin.png"],
                                       [UIImage imageNamed:@"AMS.jpg"],
                                       [UIImage imageNamed:@"Impact.png"],nil];
    
    
    [AnimatedPicture setAnimationRepeatCount:0];
    AnimatedPicture.animationDuration = 5.0;
    [AnimatedPicture startAnimating];
    
    
	// Do any additional setup after loading the view, typically from a nib.
    
}

//Audio


//Hide Button

    -(IBAction)NormalButton:(id)sender {
        
        NormalButton.hidden=NO;
        Name.hidden=NO;
    }

//Text Changer

-(IBAction) changeText {
    
    Name.text=@"Hey! I'm Amit Nivedan Kalra.";
    
}



//Swipe Back Gesture

-(IBAction)SWIPE:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

//Residence

-(void)residenceMapViewLongPressGestureRecognizer:(id)sender{
    
    //Location
    
    CLLocationCoordinate2D residenceCoordinate;
    residenceCoordinate.latitude = 37.77493;
    residenceCoordinate.longitude = -122.41942;
    _residenceMapView.region = MKCoordinateRegionMakeWithDistance(residenceCoordinate, 20000, 20000);
    
}

//San Francisco Flyover

- (IBAction)MapsLocation:(id)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"maps:address=San+Francisco"]];
    
}

//About San Francisco

- (IBAction)Wikipedia:(id)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://en.wikipedia.org/wiki/San_Francisco"]];
    
}

//ROBLOX Developer (Profile Page)

- (IBAction)ROBLOXDev:(id)sender{
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.roblox.com/User.aspx?ID=36509245&ForcePublicView=true"]];
    
}

//ROBLOX Website

-(IBAction)ROBLOX:(id)sender {
    
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@"http://www.roblox.com"]];
    
}

//School Websites

//Delaine Eastin Elementary

- (IBAction)Eastin:(id)sender {
    
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@"http://easweb.nhusd.k12.ca.us"]];
    
}

//Alvarado Middle School

- (IBAction)AMS:(id)sender {
    
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@"http://amsweb.nhusd.k12.ca.us/"]];
}

//James Logan high School

- (IBAction)Logan:(id)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://jameslogan.org"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
 
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
