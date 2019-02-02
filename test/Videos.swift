//
//  Videos.swift
//  test
//
//  Created by Test on 31/01/2019.
//  Copyright © 2019 Joshua Fang. All rights reserved.
//

import UIKit
import Firebase

class Videos: NSObject {
    
    var videoTitle: String = ""
    var videoURL: String = ""
    var videos: [String] = []
    
    init(name: String, url: String) {
        self.videoTitle = name
        self.videoURL = url
    }
    
    func addVideoToMyArray(url: String) {
        self.videos.append(videoURL)
    }
    
    func printItemsInMyArray() {
        
        for video in self.videos {
            print(video)
        }
    }
    
}
