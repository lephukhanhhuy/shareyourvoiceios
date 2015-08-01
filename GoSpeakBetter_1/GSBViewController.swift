//
//  GSBViewController.swift
//  GoSpeakBetter_1
//
//  Created by Le Huy on 8/1/15.
//  Copyright (c) 2015 Huy Le. All rights reserved.
//

import Foundation
import UIKit

class GSBViewController: UIViewController, GSBTabbarViewControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if self.tabBarController is GSBTabbarViewController {
            var gsbTabbarVC:GSBTabbarViewController = self.tabBarController as! GSBTabbarViewController
            gsbTabbarVC.gsbTabbarDelegate = self
        }
    }
    
    //MARK: GSBTabbarViewControllerDelegate
    func btnCenterSelected() {
        println("Open Record screen")
    }
    
}