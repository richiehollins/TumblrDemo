//
//  LogInViewController.swift
//  TumblrDemo
//
//  Created by Hollins, Richie on 4/23/16.
//  Copyright © 2016 Hollins, Richie. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var formHolder: UIView!
    @IBOutlet weak var emailField: UITextField!
    
    var formHolderOffsetY: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        formHolderOffsetY = formHolder.frame.origin.y
    }

    override func viewWillAppear(animated: Bool) {
        formHolder.frame.origin.y = 568
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 1.5, options: [], animations: { 
            self.formHolder.frame.origin.y = self.formHolderOffsetY
            }) { (Bool) in
                self.emailField.becomeFirstResponder()
        }
    }
    
    @IBAction func didTapCancel(sender: AnyObject) {
        view.endEditing(true)
        UIView.animateWithDuration(0.3, delay: 0, options: [UIViewAnimationOptions.CurveEaseIn], animations: {
            self.formHolder.frame.origin.y = 568
            }) { (Bool) in
                self.dismissViewControllerAnimated(true, completion: {
                })
        }
    }

    @IBAction func didTapToDismiss(sender: AnyObject) {
        view.endEditing(true)
        UIView.animateWithDuration(0.3, delay: 0, options: [UIViewAnimationOptions.CurveEaseIn], animations: {
            self.formHolder.frame.origin.y = 568
        }) { (Bool) in
            self.dismissViewControllerAnimated(true, completion: {
            })
        }
    }
}
