//
//  TabBarViewController.swift
//  TumblrDemo
//
//  Created by Hollins, Richie on 4/23/16.
//  Copyright © 2016 Hollins, Richie. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet var buttons: [UIButton]!
    
    var homeViewContoller: UIViewController!
    var searchViewContoller: UIViewController!
    var accountViewContoller: UIViewController!
    var trendingViewContoller: UIViewController!
    
    var viewControllers: [UIViewController]!
    
    var selectedIndex: Int = 0
    
    var fadeTransition: FadeTransition!
    
    @IBOutlet weak var bubble: UIImageView!
    var bubbleInitialOffsetY: CGFloat!
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle { return UIStatusBarStyle.LightContent }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bubbleInitialOffsetY = bubble.frame.origin.y
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewContoller = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewContoller = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        accountViewContoller = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewContoller = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        viewControllers = [homeViewContoller,searchViewContoller,accountViewContoller,trendingViewContoller]
        
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
    }

    @IBAction func didPressTab(sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        buttons[previousIndex].selected = false
        
        let previousVC = viewControllers[previousIndex]
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.selected = true
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
    
        contentView.addSubview(vc.view)
        
        vc.didMoveToParentViewController(self)
        
        if selectedIndex == 1 {
            UIView.animateWithDuration(0.3, animations: { 
                self.bubble.alpha = 0
            })
        } else {
            makeThatBubbleBounce()
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destinationViewController = segue.destinationViewController
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
        fadeTransition = FadeTransition()
        destinationViewController.transitioningDelegate = fadeTransition
        fadeTransition.duration = 0.25
    }
    
    func makeThatBubbleBounce() {
        UIView.animateWithDuration(0.7, delay: 0, options: [UIViewAnimationOptions.Autoreverse, UIViewAnimationOptions.Repeat], animations: {
            self.bubble.frame.origin.y = self.bubbleInitialOffsetY + 5
        }) { (Bool) in
            
        }
        UIView.animateWithDuration(0.3) {
            self.bubble.alpha = 1
        }
    }
    
}
