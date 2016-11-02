//
//  Alarm.swift
//  Awake
//
//  Created by Kandriga,Naga Krishna Lalith on 10/12/16.
//  Copyright © 2016 LeeroyJenkins. All rights reserved.
//

import Foundation

class Alarm {
    var time:String
    var meridian:String
    var slider:Bool
    
    init(time:String, meridian:String, slider:Bool){
        self.time = time
        self.meridian = meridian
        self.slider = slider
    }
}