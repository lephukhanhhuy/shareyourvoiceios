//
//  ProfileViewController.swift
//  GoSpeakBetter_1
//
//  Created by Le Huy on 8/1/15.
//  Copyright (c) 2015 Huy Le. All rights reserved.
//

import UIKit

let textCellIdentifier = "TextCell"// Also set this in storyboard

class ProfileViewController: GSBViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var publicData:Array<AudioObject> = Array<AudioObject>()
    var privateData:Array<AudioObject> = Array<AudioObject>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add dummy data
        for i in 0...20 {
            privateData.append(AudioObject())
        }
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MARK: UITableViewDelegate
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(textCellIdentifier, forIndexPath: indexPath) as! AudioTableViewCell
        
        var dataObject = privateData[indexPath.row]
        
        cell.lbCategory.text = dataObject.categoryName
        cell.lbTitle.text = dataObject.title
        // Set source_url for audioplayer
        
        return cell
    }
    
    // MARK: UITableViewDataSource
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return privateData.count
    }
}