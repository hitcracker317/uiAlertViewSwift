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
    
    var countDownTimer = NSTimer(); //NStimerのインスタンスを生成
    var timeValue = 5.00;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timerLabel.text = "5.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startTimer(sender: AnyObject) {
        countDownTimer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("countDownTimerLabel"), userInfo: nil, repeats: true)
    }
    
    func countDownTimerLabel(){
        //カウントダウン開始。timeValueの値を0.01ずつ引く
        timeValue -= 1
        timerLabel.text = "".stringByAppendingFormat("%.2f", timeValue) //小数点以下2桁のみを表示する(小数点の桁数を指定して文字列を作る)
        
        //Switchi文
        switch timeValue {
            
            //3~1の時はtimerLabelの文字色を変える
            //0秒の時にタイマーを停止
            case 2:
                println()
                self.view.backgroundColor = UIColor(red: 0.15, green: 0.68, blue: 0.38, alpha: 1)
                break
            case 1:
                println()
                self.view.backgroundColor = UIColor(red: 0.16, green: 5, blue: 0.73, alpha: 1)
                break
            case 0:
                println()
                self.view.backgroundColor = UIColor(red: 0.75, green: 0.22, blue: 0.17, alpha: 1)
                
                countDownTimer.invalidate()
                break
            
            default :
                break
        }
        
        
    }
}

