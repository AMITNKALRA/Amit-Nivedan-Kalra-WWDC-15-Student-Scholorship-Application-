//
//  AboutMeViewController.swift
//  Amit Kalra
//
//  Created by Amit Kalra on 4/14/15.
//  Copyright (c) 2015 Amit Kalra. All rights reserved.
//

import UIKit
import MapKit
import AVFoundation


class AboutMeViewController: UIViewController, MKMapViewDelegate {
    
    //About Me Audio Playover
    
    var audioPlayer = AVAudioPlayer()

    
    func aboutMeAudio(){
        if let alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("About Me", ofType: "mp3")!){
        
        AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback, error: nil)
        AVAudioSession.sharedInstance().setActive(true, error: nil)
        
        var error: NSError?
            audioPlayer = AVAudioPlayer(data: NSData(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("About Me", ofType: "mp3")!)!), error: nil)
            
        audioPlayer.prepareToPlay()
        audioPlayer.play()
            
        }
    }
    
    
    @IBAction func anotheraboutMeAudio(sender: AnyObject) {
        
        aboutMeAudio()
    }
    
    
    //Swipe Back Gesture
    
    @IBAction func SWIPE(sender: AnyObject) {
        
        if let navController = self.navigationController {
            navController.popViewControllerAnimated(true)
        }
        
    }
    
    
    //Age
    
    @IBOutlet weak var daysLabel: UILabel!
    @IBOutlet weak var monthsLabel: UILabel!
    @IBOutlet weak var yearsLabel: UILabel!
    
    @IBAction func birthday(sender:AnyObject){
        
        var dateComponents = NSDateComponents()
        
        dateComponents.day = 19
        dateComponents.month = 12
        dateComponents.year = 1999
        
        let birthDate = NSCalendar(identifier: NSCalendarIdentifierGregorian)!.dateFromComponents(dateComponents)!
        
        let durationDateComponents = NSCalendar(identifier: NSCalendarIdentifierGregorian)!.components( .CalendarUnitYear | .CalendarUnitMonth | .CalendarUnitDay | .CalendarUnitHour |  .CalendarUnitMinute | .CalendarUnitSecond, fromDate: birthDate, toDate: NSDate(), options: nil)
        
        
         yearsLabel.text = "\(durationDateComponents.year)"
         monthsLabel.text = "\(durationDateComponents.month)"
         daysLabel.text = "\(durationDateComponents.day)"
        
        
    }
    
    //San Francisco Flyover - doesn't work
    
    @IBAction func MapsLocation(sender: AnyObject) {
        
        if let SF = NSURL(string: "maps:address=San+Francisco") {
            
            UIApplication.sharedApplication().openURL(SF)
            
        }
        
    }
    
    
    //Information on San Francisco
    
    @IBAction func Wikipedia(sender: AnyObject){
        
        if let Wiki = NSURL(string: "http://en.wikipedia.org/wiki/San_Francisco") {
            
            UIApplication.sharedApplication().openURL(Wiki)
            
        }
        
    }
    
    //ROBLOX Developer (Profile)
    
    @IBAction func ROBLOXDev(sender: AnyObject){
        
        if let DevEx = NSURL(string: "http://www.roblox.com/User.aspx?ID=36509245&ForcePublicView=true"){
            
            UIApplication.sharedApplication().openURL(DevEx)
            
        }
    }
    
    //ROBLOX
    
    @IBAction func ROBLOX(sender: AnyObject){
        
        if let ROBLOXLink = NSURL(string: "http://roblox.com") {
            
            UIApplication.sharedApplication().openURL(ROBLOXLink)
            
        }
        
    }
    
    
    //School Websites
    
    
    //Delain Eastin Elementary (DEE/Eastin)
    
    @IBAction func Eastin(sender:AnyObject){
        
        if let DEE = NSURL(string: "http://easweb.nhusd.k12.ca.us"){
            
            UIApplication.sharedApplication().openURL(DEE)
            
        }
        
    }
    
    
    //Alvardo Middle School (AMS)
    
    
    @IBAction func Alvardo(sender:AnyObject){
        
        if let AMS = NSURL(string: "http://amsweb.nhusd.k12.ca.us/"){
            
            UIApplication.sharedApplication().openURL(AMS)
            
        }
    }
    
    //James Logan High School (JLHS/Logan)
    
    @IBAction func Logan(sender: AnyObject){
        
        if let JLHS = NSURL(string: "http://jameslogan.org") {
            
            UIApplication.sharedApplication().openURL(JLHS)
            
        }
    }
    
    //Music
    
    
    //Pompeii
    
    @IBAction func Pompeii(sender: AnyObject){
        
        if let Bastile = NSURL(string: "https://itunes.apple.com/us/album/bad-blood/id672945248") {
            
            UIApplication.sharedApplication().openURL(Bastile)
            
        }
    }
    
    //A Sky Full of Stars
    
    @IBAction func SkyFullofStars(sender: AnyObject){
        
        if let Stars = NSURL(string: "https://itunes.apple.com/us/album/ghost-stories/id829909653") {
            
            UIApplication.sharedApplication().openURL(Stars)
            
        }
    }
    
    //Where Are U Now
    
    @IBAction func WhereAreUNow(sender: AnyObject){
        
        if let U = NSURL(string: "https://itunes.apple.com/us/album/skrillex-diplo-present-jack/id971262235") {
            
            UIApplication.sharedApplication().openURL(U)
            
        }
    }
    
    //Rude
    
    @IBAction func Rude(sender: AnyObject){
        
        if let Magic = NSURL(string: "https://itunes.apple.com/us/album/dont-kill-the-magic/id881629097") {
            
            UIApplication.sharedApplication().openURL(Magic)
            
        }
    }
    
    //Style
    
    @IBAction func Style(sender: AnyObject){
        
        if let Taylor = NSURL(string: "https://itunes.apple.com/us/album/1989/id907242701") {
            
            UIApplication.sharedApplication().openURL(Taylor)
            
        }
    }
    
    //Life in Color
    
    @IBAction func lifeInColor(sender: AnyObject){
        
        if let color = NSURL(string: "https://itunes.apple.com/us/album/native/id854739054") {
            
            UIApplication.sharedApplication().openURL(color)
            
        }
    }
    
    //No Role Modelz
    
    @IBAction func Modelz(sender: AnyObject){
        
        if let Role = NSURL(string: "https://itunes.apple.com/us/album/2014-forest-hills-drive/id940850050") {
            
            UIApplication.sharedApplication().openURL(Role)
            
        }
    }
    
    //Know Yourself
    
    @IBAction func Yourself(sender: AnyObject){
        
        if let Know = NSURL(string: "https://itunes.apple.com/us/album/if-youre-reading-this-its/id966997496") {
            
            UIApplication.sharedApplication().openURL(Know)
            
        }
    }
    
    //Reccess
    
    @IBAction func Reccess(sender: AnyObject){
        
        if let Skrillex = NSURL(string: "https://itunes.apple.com/us/album/recess/id833843609") {
            
            UIApplication.sharedApplication().openURL(Skrillex)
            
        }
    }
    
    //Overload
    
    @IBAction func Overload(sender: AnyObject){
        
        if let Dillon = NSURL(string: "https://itunes.apple.com/us/album/overload-single/id960855818") {
            
            UIApplication.sharedApplication().openURL(Dillon)
            
        }
    }
    
    //Furious 7
    
    @IBAction func RideOut(sender: AnyObject){
        
        if let Out = NSURL(string: "https://itunes.apple.com/us/album/furious-7-original-motion/id966411595") {
            
            UIApplication.sharedApplication().openURL(Out)
            
        }
    }
    
    //Can't Hold Us
    
    @IBAction func HoldUs(sender: AnyObject){
        
        if let Holding = NSURL(string: "https://itunes.apple.com/us/album/the-heist-deluxe-edition/id560097651") {
            
            UIApplication.sharedApplication().openURL(Holding)
            
        }
    }
    
    //All I Got
    
    @IBAction func All(sender: AnyObject){
        
        if let I = NSURL(string: "https://itunes.apple.com/us/album/all-i-got-single/id922582011") {
            
            UIApplication.sharedApplication().openURL(I)
            
        }
    }
    
    //Prayer in C
    
    @IBAction func Prayer(sender: AnyObject){
        
        if let C = NSURL(string: "https://itunes.apple.com/gb/album/prayer-in-c-robin-schulz-remix/id895147739") {
            
            UIApplication.sharedApplication().openURL(C)
            
        }
    }
    
    //Scroll Views
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var photoScrollView: UIScrollView!
    @IBOutlet weak var devices: UIScrollView!
    @IBOutlet weak var iTunes: UIScrollView!
    
    //San Francisco
    
    @IBOutlet weak var SanFranciscoView: MKMapView!
    
    //About Me Title Image
    
    @IBOutlet weak var titleImage: UIImageView!
    
    
    //Animated Background
    
    @IBOutlet var AnimatedBackground: UIImageView!
    
    let backgroundImages = [
        
        UIImage(named: "Blur.jpg")!,
        
        UIImage(named: "Design.jpg")!]
    
    var backgroundIndex = 0
    let backgroundAnimationDuration: NSTimeInterval = 0.25
    let backgroundSwitchingInterval: NSTimeInterval = 2
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Animated Background
        
        AnimatedBackground.image = backgroundImages[backgroundIndex++]
        animateAnimatedBackground()
        
        //About Me Title Image
        
        titleImage.layer.masksToBounds = true
        
        //Scrollers
        
        self.scrollView.contentInset = UIEdgeInsetsMake(0, 0, 7000, 0)
        
        //Birthday
            
            var dateComponents = NSDateComponents()
            
             dateComponents.day = 19
             dateComponents.month = 12
             dateComponents.year = 1999
            
            let birthDate = NSCalendar(identifier: NSCalendarIdentifierGregorian)!.dateFromComponents(dateComponents)!
            
            let durationDateComponents = NSCalendar(identifier: NSCalendarIdentifierGregorian)!.components( .CalendarUnitYear | .CalendarUnitMonth | .CalendarUnitDay | .CalendarUnitHour |  .CalendarUnitMinute | .CalendarUnitSecond, fromDate: birthDate, toDate: NSDate(), options: nil)
            
        yearsLabel.text = "\(durationDateComponents.year) years"
        monthsLabel.text = "\(durationDateComponents.month) months"
        daysLabel.text = "\(durationDateComponents.day) days"
        
        //San Francisco
        
        var latitude : CLLocationDegrees = 37.7833
        var longitude : CLLocationDegrees = -122.4167
        
        var latitudeData : CLLocationDegrees = 0.99999000000000
        var longitudeData : CLLocationDegrees = 0.99999000000000
        
        var areaSpan : MKCoordinateSpan = MKCoordinateSpanMake(latitudeData, longitudeData)
        
        var SanFrancisco : CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        var region : MKCoordinateRegion = MKCoordinateRegionMake(SanFrancisco, areaSpan)
        
        self.SanFranciscoView.setRegion(region, animated: true)
        
        var SanFrancisconAnnotation = MKPointAnnotation()
        
        SanFrancisconAnnotation.coordinate = SanFrancisco
        
        SanFrancisconAnnotation.title = "San Francisco, CA"
        SanFrancisconAnnotation.subtitle = "I don't live here, but I live in the Bay Area."
    
        self.SanFranciscoView.addAnnotation(SanFrancisconAnnotation)
        
    }
    
    
    //Animated Background
    
    func animateAnimatedBackground() {
        CATransaction.begin()
        
        CATransaction.setAnimationDuration(backgroundAnimationDuration)
        CATransaction.setCompletionBlock {
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(self.backgroundSwitchingInterval * NSTimeInterval(NSEC_PER_SEC))), dispatch_get_main_queue()) {
                self.animateAnimatedBackground()
            }
        }
        
        let backgroundTransition = CATransition()
        backgroundTransition.type = kCATransitionFade
        /*
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        */
        AnimatedBackground.layer.addAnimation(backgroundTransition, forKey: kCATransition)
        AnimatedBackground.image = backgroundImages[backgroundIndex]
        
        CATransaction.commit()
        
        backgroundIndex = backgroundIndex < backgroundImages.count - 1 ? backgroundIndex + 1 : 0
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


/*

I know, I'm late to the developer party, but hey, it's better LATE than NEVER! Here's a list of Apple devices I own.

- iPhone 2G (It got put in the laundry by accident. I was a irrisponsible 7 year old.)
- iPod touch 4th generation (My first Apple Product I purchased!)
- iPod touch 5th generation (I started getting interested into programming with this device.)
- iPhone 5 (This was a gift from my brother and within this device I discovered jailbreaking.
- iPhone 5s (I develop on this now, this is also my main device!)
- MacBook Air (11-inch, Mid 2013) (I use this for development.)
- iPhone 6 Plus (I returned this device just because the screen size was too big for me! I think the iPhone 5s is perfect.)

Current Devices:
- Factory Unlocked Space Gray 16GB iPhone 5s (My Daily Driver)
- MacBook Air (11-inch, Mid 2013)
-  Watch Sports Edition (42mm)

Products I'm planning to purchase:
- iPhone 6s Plus/iPhone 7? I'm probably going to need it for development.(The iPhone 6 Plus simuator doesn't fit on my screen :c)
- Macbook Pro w/ Retina HD Display (Space Gray)

*/


