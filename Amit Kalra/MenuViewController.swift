//
//  ViewController.swift
//  Amit Kalra
//
//  Created by Amit Kalra on 4/14/15.
//  Copyright (c) 2015 Amit Kalra. All rights reserved.
//

import UIKit
import AVFoundation

class MenuViewController: UIViewController {
    
    
    //Animated Label
    
    @IBOutlet var AnimatedLabel : UILabel!
    @IBAction func AnimatedLabel(changeText: UILabel) {
        
        self.AnimatedLabel.text = "Amit Nivedan Kalra"
        
    }
    
    //Hide Button
    
    @IBOutlet var HideButton : UIButton!
    @IBAction func HideButton(sender: AnyObject) {
        
        HideButton.hidden = true
        AnimatedLabel.hidden = false
        
    }
    
    //Social Media
    
    
    //Website
    
    @IBAction func Website(sender : AnyObject) {
        
        if let WebsiteLink = NSURL(string: "http://amitnkalra.github.io") {
            
            UIApplication.sharedApplication().openURL(WebsiteLink)
            
        }
        
    }
    
    //Github
    
    @IBAction func Github(sender : AnyObject) {
        
        if let GithubLink = NSURL(string: "http://github.com/amitnkalra") {
            
            UIApplication.sharedApplication().openURL(GithubLink)
            
        }
        
    }
    
    //VSCO Cam
    
    @IBAction func VSCO(sender : AnyObject) {
        
        if let VSCOCam = NSURL(string: "http://amitnkalra.vsco.co") {
            
            UIApplication.sharedApplication().openURL(VSCOCam)
            
        }
        
    }
    
    //YouTube
    
    @IBAction func YouTube(sender : AnyObject) {
        
        if let YouTubeLink = NSURL(string: "http://youtube.com/amitnkalra") {
            
            UIApplication.sharedApplication().openURL(YouTubeLink)
            
        }
        
    }
    
    //Twitter
    
    @IBAction func Twitter(sender : AnyObject) {
        
        if let TwitterLink = NSURL(string: "http://twitter.com/amitnkalra") {
            
            UIApplication.sharedApplication().openURL(TwitterLink)
            
        }
        
    }
    
    //Instagram
    
    @IBAction func Instagram(sender : AnyObject) {
        
        if let InstagramLink = NSURL(string: "http://instagram.com/amitnkalra") {
            
            UIApplication.sharedApplication().openURL(InstagramLink)
            
        }
        
    }
    
    //Facebook 
    
    @IBAction func Facebook(sender : AnyObject) {
        
        if let FacebookLink = NSURL(string: "http://facebook.com/amitnkalra") {
            
            UIApplication.sharedApplication().openURL(FacebookLink)
            
        }
        
    }
    
    //Stackoverflow
    
    @IBAction func StackOver(sender : AnyObject) {
        
        if let Stack = NSURL(string : "http://stackoverflow.com/users/3971519/amit-nivedan-kalra") {
            
            UIApplication.sharedApplication().openURL(Stack)
        }
    }
    
    //Snapchat
    
    @IBAction func Snapchat(sender : AnyObject) {
        
        if let Snap = NSURL(string : "snapchat://amitnkalra") {
            
            UIApplication.sharedApplication().openURL(Snap)
        }
    }
    
    
    //Animated Background
    
    @IBOutlet var AnimatedBackground: UIImageView!
    
    let backgroundImages = [
        
        UIImage(named: "Blur.jpg")!,
        
        UIImage(named: "Design.jpg")!]
    
    var backgroundIndex = 0
    let backgroundAnimationDuration: NSTimeInterval = 0.25
    let backgroundSwitchingInterval: NSTimeInterval = 2
    
    
    //Animated Picture
    
    @IBOutlet var AnimatedPicture: UIImageView!
    
    let images = [
        
        UIImage(named: "Air Amit.JPG")!,
        
        UIImage(named: "Ball.JPG")!,
        
        UIImage(named: "BTS.JPG")!,
        
        UIImage(named: "India Selfie.jpg")!,
        
        UIImage(named: "On the phone.JPG")!]
    
    var index = 0
    let animationDuration: NSTimeInterval = 0.25
    let switchingInterval: NSTimeInterval = 2
    
    //Scroll Views
    
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Scrollers
        
        self.scrollView.contentInset = UIEdgeInsetsMake(0, 0, 0, 580)
        
        //Animated Picture
        
        AnimatedPicture.layer.masksToBounds = true
        AnimatedPicture.image = images[index++]
        animateAnimatedPicture()
        
        //Animated Background
        
        AnimatedBackground.image = backgroundImages[backgroundIndex++]
        animateAnimatedBackground()
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
    
    
    //Animated Picture
    
    func animateAnimatedPicture() {
        CATransaction.begin()
        
        CATransaction.setAnimationDuration(animationDuration)
        CATransaction.setCompletionBlock {
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(self.switchingInterval * NSTimeInterval(NSEC_PER_SEC))), dispatch_get_main_queue()) {
                self.animateAnimatedPicture()
            }
        }
        
        let transition = CATransition()
        transition.type = kCATransitionFade
        /*
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        */
        AnimatedPicture.layer.addAnimation(transition, forKey: kCATransition)
        AnimatedPicture.image = images[index]
        
        CATransaction.commit()
        
        index = index < images.count - 1 ? index + 1 : 0
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

