//
//  AlarmViewController.swift
//  Awake
//
//  Created by Kandriga,Naga Krishna Lalith on 10/12/16.
//  Copyright © 2016 LeeroyJenkins. All rights reserved.
//

import UIKit

class AlarmViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let alarmList:AlarmList = AlarmList(alarms: [],switchStatus: true)
    
    @IBOutlet weak var alarmTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        alarmTable.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alarmList.numAlarms()
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //lists alarms
        let cell = tableView.dequeueReusableCellWithIdentifier("alCell", forIndexPath: indexPath)
        let alarm:NewAlarm = alarmList.alarmNum(indexPath.row)
        let timeLBL = cell.viewWithTag(100) as! UILabel
        let switchPos = cell.viewWithTag(101) as! UISwitch
        timeLBL.text = alarm.time
        //the switch doesn't actually do anything yet
        switchPos.on = alarm.alarmStatus
        return cell
    }
    
    @IBAction func addAlarm(sender:UIStoryboardSegue){
        let alarmVC = sender.sourceViewController as! NewAlarmViewController
        alarmList.alarms.append(alarmVC.newAlarm)
    }
}