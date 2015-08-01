//
//  GSBTabbarViewController.swift
//  GoSpeakBetter_1
//
//  Created by Le Huy on 8/1/15.
//  Copyright (c) 2015 Huy Le. All rights reserved.
//

import UIKit

class GSBTabbarViewController: UITabBarController {
    var centerButton:UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        centerButton = UIButton(frame: CGRectMake(0, 0, 100, 100))
        centerButton.setTitle("Share your voice", forState: UIControlState.Normal)
        centerButton.backgroundColor = UIColor.blueColor()
        
        self.tabBar.addSubview(centerButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        centerButton.center = CGPointMake(self.tabBar.frame.size.width/2, self.tabBar.frame.size.height/2)
    }
}