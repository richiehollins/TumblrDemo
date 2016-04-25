//
//  ComposeViewController.swift
//  TumblrDemo
//
//  Created by Hollins, Richie on 4/23/16.
//  Copyright © 2016 Hollins, Richie. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textIcon: UIButton!
    @IBOutlet weak var photoIcon: UIButton!
    @IBOutlet weak var quoteIcon: UIButton!
    @IBOutlet weak var linkIcon: UIButton!
    @IBOutlet weak var chatIcon: UIButton!
    @IBOutlet weak var videoIcon: UIButton!
    @IBOutlet weak var nevermindButton: UIButton!
    
    var topRowOffsetY: CGFloat!
    var bottomRowOffsetY: CGFloat!
    var nevermindOffsetY: CGFloat!
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle { return UIStatusBarStyle.LightContent }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topRowOffsetY = textIcon.frame.origin.y
        bottomRowOffsetY = linkIcon.frame.origin.y
        nevermindOffsetY = nevermindButton.frame.origin.y
    }
    
    override func viewWillAppear(animated: Bool) {
        textIcon.frame.origin.y = 568
        photoIcon.frame.origin.y = 568
        quoteIcon.frame.origin.y = 568
        linkIcon.frame.origin.y = 568
        chatIcon.frame.origin.y = 568
        videoIcon.frame.origin.y = 568
        nevermindButton.frame.origin.y = 568
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 1.5, options: [], animations: { 
            self.textIcon.frame.origin.y = self.topRowOffsetY
            }) { (Bool) in
        }
        UIView.animateWithDuration(0.5, delay: 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 1.5, options: [], animations: { 
            self.photoIcon.frame.origin.y = self.topRowOffsetY
            }) { (Bool) in
        }
        UIView.animateWithDuration(0.5, delay: 0.1, usingSpringWithDamping: 0.8, initialSpringVelocity: 1.5, options: [], animations: { 
            self.quoteIcon.frame.origin.y = self.topRowOffsetY
            }) { (Bool) in
        }
        UIView.animateWithDuration(0.5, delay: 0.15, usingSpringWithDamping: 0.8, initialSpringVelocity: 1.5, options: [], animations: { 
            self.linkIcon.frame.origin.y = self.bottomRowOffsetY
            }) { (Bool) in
        }
        UIView.animateWithDuration(0.5, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 1.5, options: [], animations: { 
            self.chatIcon.frame.origin.y = self.bottomRowOffsetY
            }) { (Bool) in
        }
        UIView.animateWithDuration(0.5, delay: 0.25, usingSpringWithDamping: 0.8, initialSpringVelocity: 1.5, options: [], animations: { 
            self.videoIcon.frame.origin.y = self.bottomRowOffsetY
            }) { (Bool) in
        }
        UIView.animateWithDuration(0.25, delay: 0.2, options: [UIViewAnimationOptions.CurveEaseOut], animations: {
            self.nevermindButton.frame.origin.y = self.nevermindOffsetY
            }) { (Bool) in
        }
    }
    
    @IBAction func didTapNevermind(sender: AnyObject) {
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 1.5, options: [], animations: {
            self.textIcon.frame.origin.y = -120
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.5, delay: 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 1.5, options: [], animations: {
            self.photoIcon.frame.origin.y = -120
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.5, delay: 0.1, usingSpringWithDamping: 0.8, initialSpringVelocity: 1.5, options: [], animations: {
            self.quoteIcon.frame.origin.y = -120
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.5, delay: 0.15, usingSpringWithDamping: 0.8, initialSpringVelocity: 1.5, options: [], animations: {
            self.linkIcon.frame.origin.y = -120
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.5, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 1.5, options: [], animations: {
            self.chatIcon.frame.origin.y = -120
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.5, delay: 0.25, usingSpringWithDamping: 0.8, initialSpringVelocity: 1.5, options: [], animations: {
            self.videoIcon.frame.origin.y = -120
        }) { (Bool) in
        }
        UIView.animateWithDuration(0.25, delay: 0, options: [UIViewAnimationOptions.CurveEaseIn], animations: {
            self.nevermindButton.frame.origin.y = 568
        }) { (Bool) in
            self.dismissViewControllerAnimated(true) {            }
        }
    }
}
