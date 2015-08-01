//
//  AudioObject.swift
//  GoSpeakBetter_1
//
//  Created by Le Huy on 8/1/15.
//  Copyright (c) 2015 Huy Le. All rights reserved.
//

import Foundation

enum AudioObjectStatus {
    case Saved, Shared
}

class AudioObject: NSObject {
    
    // Use this for our own player
    var source_url = "https://dl.dropboxusercontent.com/u/113652072/soundDemo.mp3"
    // Seconds, float value, convert this to NSTimerInterval
    var reviewPoints:Array<NSNumber> = [10.2,20.5,60.01]

    // For table view cell
    var user_id = "123"
    var title = "How to learn vocabulary"
    var categoryName = "Learn English"
    
    var status = AudioObjectStatus.Saved
    
    
    
}