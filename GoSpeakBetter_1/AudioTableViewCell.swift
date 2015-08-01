//
//  AudioTableViewCell.swift
//  GoSpeakBetter_1
//
//  Created by Le Huy on 8/1/15.
//  Copyright (c) 2015 Huy Le. All rights reserved.
//

import UIKit

class AudioTableViewCell: UITableViewCell {
    @IBOutlet weak var audioView: AudioPlayer!
    @IBOutlet weak var lbCategory: UILabel!
    @IBOutlet weak var lbTitle: UILabel!
}