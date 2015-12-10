//
//  ViewController.swift
//  CoreGraphics2
//
//  Created by Thanh Pham on 12/10/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterView: CounterView!
    @IBOutlet weak var counterLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = String(counterView.counter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnPushButton(button: PushButtonView) {
        if button.isAddButton {
            if(counterView.counter < 8){
                counterView.counter++
            }
            else{
                let alert = UIAlertController(title: "Thông báo", message: "Click gì? max rồi", preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "ừm ok", style: UIAlertActionStyle.Default, handler: nil))
                self.presentViewController(alert, animated: true, completion: nil)
            }
            
        } else {
            if counterView.counter > 0 {
                counterView.counter--
            }else{
                let alert = UIAlertController(title: "Thông báo", message: "Click gì? nhỏ nhất rồi", preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "ừm ok", style: UIAlertActionStyle.Default, handler: nil))
                self.presentViewController(alert, animated: true, completion: nil)
        }
    }
        counterLabel.text = String(counterView.counter)
    }


}

