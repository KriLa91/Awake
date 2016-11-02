//
//  AlarmList.swift
//  Awake
//
//  Created by Kandriga,Naga Krishna Lalith on 10/19/16.
//  Copyright © 2016 LeeroyJenkins. All rights reserved.
//

import Foundation

class AlarmList {
    var alarms:[NewAlarm] = []
    var switchStatus:Bool!
    
    init(alarms:[NewAlarm], switchStatus:Bool){
        self.alarms = alarms
        self.switchStatus = switchStatus
    }
    
    func numAlarms() -> Int{
        return alarms.count
    }
    
    func alarmNum(alarm:Int)-> NewAlarm{
        return alarms[alarm]
    }
}