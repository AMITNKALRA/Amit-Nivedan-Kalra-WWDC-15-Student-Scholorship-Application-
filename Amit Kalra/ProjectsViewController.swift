//
//  ProjectsViewController.swift
//  Amit Kalra
//
//  Created by Amit Kalra on 4/14/15.
//  Copyright (c) 2015 Amit Kalra. All rights reserved.
//

import UIKit
import AVFoundation

class ProjectsViewController: UIViewController {
    
    //Parkour City
    
    @IBAction func ParkourCity(sender: AnyObject) {
        
        if let PC = NSURL(string:"http://roblox.com/games/102726507/Parkour-City"){
            
            UIApplication.sharedApplication().openURL(PC)
            
        }
        
    }
    
    @IBAction func AppleJumps(sender: AnyObject) {
        
        if let AJ = NSURL(string: "https://itunes.apple.com/us/app/id942130042") {
            
            UIApplication.sharedApplication().openURL(AJ)
        }
    }
    
    
    //Projects Audio
    
    var audioPlayer = AVAudioPlayer()
    
    
    func ProjectsAudio(){
        if let alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Projects", ofType: "mp3")!){
            
            AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback, error: nil)
            AVAudioSession.sharedInstance().setActive(true, error: nil)
            
            var error:NSError?
            audioPlayer = AVAudioPlayer(data: NSData(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Projects", ofType: "mp3")!)!), error: nil)
            
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
        }
    }

    
    @IBAction func anotherProjectsAudio(sender: AnyObject) {
        
        ProjectsAudio()
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
        
        self.scrollView.contentInset = UIEdgeInsetsMake(0, 0, 2900, 0)
        
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

