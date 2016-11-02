//
//  NewAlarm.swift
//  Awake
//
//  Created by Kandriga,Naga Krishna Lalith on 10/19/16.
//  Copyright © 2016 LeeroyJenkins. All rights reserved.
//

import Foundation

class NewAlarm {
    var time:String!
    var repeatStatus:String!
    var alarmLabel:String!
    var alarmSound:String!
    var alarmStatus:Bool!
    
    init(time:String, repeatStatus:String, alarmLabel:String, alarmSound:String, alarmStatus:Bool){
        self.time = time
        self.repeatStatus = repeatStatus
        self.alarmLabel = alarmLabel
        self.alarmSound = alarmSound
        self.alarmStatus = alarmStatus
    }
    convenience init(){
        self.init(time: "", repeatStatus:"", alarmLabel:"", alarmSound:"", alarmStatus:false)
    }
}