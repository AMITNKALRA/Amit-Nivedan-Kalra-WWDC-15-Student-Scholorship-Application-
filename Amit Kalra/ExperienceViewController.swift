//
//  ExperienceViewController.swift
//  Amit Kalra
//
//  Created by Amit Kalra on 4/14/15.
//  Copyright (c) 2015 Amit Kalra. All rights reserved.
//

import UIKit
import AVFoundation

class ExperienceViewController: UIViewController {
    
    
    //Experience Audio
    
    var audioPlayer = AVAudioPlayer()
    
    
    func ExperienceAudio(){
        if let alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Experience", ofType: "mp3")!){
            
            AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback, error: nil)
            AVAudioSession.sharedInstance().setActive(true, error: nil)
            
            var error:NSError?
            audioPlayer = AVAudioPlayer(data: NSData(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Experience", ofType: "mp3")!)!), error: nil)
            
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
        }
    }

    
    @IBAction func anotherExperienceAudio(sender: AnyObject) {
        
        ExperienceAudio()
    }
    
    //About Swift
    
    @IBAction func Swift(sender: AnyObject) {
        
        if let Swifty = NSURL(string: "https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/") {
            
            UIApplication.sharedApplication().openURL(Swifty)
            
        }
        
    }
    
    //About Lua
    
    @IBAction func Lua(sender: AnyObject) {
        
        if let aLua = NSURL(string: "http://www.lua.org/pil/contents.html") {
            
            UIApplication.sharedApplication().openURL(aLua)
            
        }
        
    }
    
    //About HTML
    
    @IBAction func HTML(sender: AnyObject) {
        
        if let Website = NSURL(string: "http://www.w3schools.com/html/html_intro.asp") {
            
            UIApplication.sharedApplication().openURL(Website)
            
        }
    }
    
    //About CSS
    
    @IBAction func CSS(sender: AnyObject) {
        
        if let Design = NSURL(string: "http://www.w3schools.com/css/css_intro.asp") {
            
            UIApplication.sharedApplication().openURL(Design)
            
        }
    }
    
    
    //Page Scroller
    
    @IBOutlet weak var scrollView: UIScrollView!
    
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
        
        self.scrollView.contentInset = UIEdgeInsetsMake(0, 0, 1500, 0)
        
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
    
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
