//
//  NewAlarmViewController.swift
//  Awake
//
//  Created by Kandriga,Naga Krishna Lalith on 10/19/16.
//  Copyright © 2016 LeeroyJenkins. All rights reserved.
//

import UIKit

class NewAlarmViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    var newAlarm:NewAlarm = NewAlarm()
    
    @IBOutlet var timePicker: UIDatePicker!
    
    @IBOutlet var alarmSettings: UITableView!
    
    var selectedTime:String!
    
    @IBAction func datePickerAction(sender: AnyObject) {
        //changes the new alarm's time whenever a new time is selected
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "hh:mm a"
        let strDate = dateFormatter.stringFromDate(timePicker.date)
        newAlarm.time = strDate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //sets the alarm's time to the current time in case no time is selected
        timePicker.datePickerMode = UIDatePickerMode.Time
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "hh:mm a"
        let strDate = dateFormatter.stringFromDate(timePicker.date)
        newAlarm.time = strDate
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Everything from this point on has no functionality yet
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell!
        
        if indexPath.section == 0 {
            cell = tableView.dequeueReusableCellWithIdentifier("repeat")!
            cell.textLabel?.text = "Repeat"
            cell.detailTextLabel?.text = "None"
            
        } else if indexPath.section == 1 {
            cell = tableView.dequeueReusableCellWithIdentifier("label")
            cell.textLabel?.text = "Label"
            cell.detailTextLabel?.text = "Alarm"
            
        } else {
            cell = tableView.dequeueReusableCellWithIdentifier("sound")
            cell.textLabel?.text = "Sound"
            cell.detailTextLabel?.text = "Chime"
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //to be completed
    }
   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
