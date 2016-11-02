//
//  HomeViewController.swift
//  Awake
//
//  Created by Kandriga,Naga Krishna Lalith on 10/12/16.
//  Copyright © 2016 LeeroyJenkins. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet var currentTime: UILabel!
    
    let clock = Clock()
    var timer: NSTimer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(HomeViewController.updateTimeLabel), userInfo: nil, repeats: true)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        updateTimeLabel()
    }
    
    func updateTimeLabel() {
        let formatter = NSDateFormatter()
        formatter.timeStyle = .ShortStyle
        currentTime.text = formatter.stringFromDate(clock.currentTime)
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.All
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        if let timer = self.timer {
            timer.invalidate()
        }
    }

    @IBAction func AlarmListTapGesture(sender: UITapGestureRecognizer) {
        
    }
   
    
    @IBAction func PuzzleSettingsTapGesture(sender: UITapGestureRecognizer) {
    }
    
    
   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func goBack(segue:UIStoryboardSegue){
        self.view.reloadInputViews()
    }

}
