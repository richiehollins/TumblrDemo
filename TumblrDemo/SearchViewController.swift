//
//  SearchViewController.swift
//  TumblrDemo
//
//  Created by Hollins, Richie on 4/23/16.
//  Copyright © 2016 Hollins, Richie. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchFeed: UIImageView!
    @IBOutlet weak var loader: UIImageView!
    
    var loading1: UIImage!
    var loading2: UIImage!
    var loading3: UIImage!
    
    var loadingImages: [UIImage]!
    var animatedImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loading1 = UIImage(named: "loading-1")
        loading2 = UIImage(named: "loading-2")
        loading3 = UIImage(named: "loading-3")
        
        loadingImages = [loading1,loading2,loading3]
        
        animatedImage = UIImage.animatedImageWithImages(loadingImages, duration: 0.75)
        
        loader.image = animatedImage
    }
    
    override func viewWillAppear(animated: Bool) {
        searchFeed.alpha = 0
        loader.alpha = 1
    }
    
    override func viewDidAppear(animated: Bool) {
        delay(2) { 
            self.searchFeed.alpha = 1
            self.loader.alpha = 0
        }
    }

}
