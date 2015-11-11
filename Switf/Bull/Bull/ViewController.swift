//
//  ViewController.swift
//  Bull
//
//  Created by Thanh Pham on 11/11/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue : Int = 50;
    var targetValue: Int = 0;
    var score = 0;
    var round : Int  = 0 ;
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
     @IBOutlet weak var scoreLabel: UILabel!
     @IBOutlet weak var roundLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound();
        updateLabels();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func slideMoved(slider: UISlider) {
        currentValue = lroundf(slider.value);
    }
    
    @IBAction func showAlert(){
        let difference = abs(targetValue - currentValue);
        let points = 100 - difference;
        score += points;
        
        let message = "You scored \(points) points";
        let alert = UIAlertController(title: "Hello, World",
            message: message, preferredStyle: .Alert);
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil);
        startNewRound();
        updateLabels();
    }
    func startNewRound() {
        round = round  + 1;
        targetValue = 1 + Int(arc4random_uniform(100));
        currentValue = 50
        slider.value = Float(currentValue)
    }
    
    func updateLabels() {
            targetLabel.text = String(targetValue);
            scoreLabel.text = String(score);
            roundLabel.text = String (round);
    }
}

