//
//  TrendingViewController.swift
//  TumblrDemo
//
//  Created by Hollins, Richie on 4/23/16.
//  Copyright © 2016 Hollins, Richie. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var feedImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let feedImageHeight = feedImage.frame.height
        scrollView.contentSize = CGSize(width: 320, height: feedImageHeight)

    }

}
