//
//  HomeViewController.swift
//  TumblrDemo
//
//  Created by Hollins, Richie on 4/23/16.
//  Copyright © 2016 Hollins, Richie. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var fadeTransition: FadeTransition!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destinationViewController = segue.destinationViewController
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
        fadeTransition = FadeTransition()
        destinationViewController.transitioningDelegate = fadeTransition
        fadeTransition.duration = 0.25
    }
}
