//
//  ViewController.swift
//  uiAlertViewController(20151010)
//
//  Created by 前田 晃良 on 2015/10/10.
//  Copyright (c) 2015年 A.M. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var startTimerBUtton: UIButton!
    
    //var countdownTimer : NSTimer = NSTimer.initialize();
    var timeValue = 10.00;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timerLabel.text = "10:00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startTimer(sender: AnyObject) {
        var countDownTimer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("countDownTimerLabel"), userInfo: nil, repeats: true)
    }
    
    func countDownTimerLabel(){
        println("カウントダウン！！")
    }
}

