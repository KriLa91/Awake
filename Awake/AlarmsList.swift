//
//  AlarmsList.swift
//  Awake
//
//  Created by Kandriga,Naga Krishna Lalith on 10/12/16.
//  Copyright © 2016 LeeroyJenkins. All rights reserved.
//

import Foundation



class AlarmsList {
    var alarms:[Alarm] = [Alarm(time:"10:10", meridian:"AM", slider:true),
                            Alarm(time:"03:20", meridian:"PM", slider:false)]
    
    func numAlarms() -> Int {
        return alarms.count
    }
    
    func alarmNum(index:Int) -> Alarm {
        return alarms[index]
    }
    
    func addAlarm(alarm:Alarm){
        alarms += [alarm]
    }
}