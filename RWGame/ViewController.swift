//
//  ViewController.swift
//  RWGame
//
//  Created by Samantha Cortopassi on 1/13/19.
//  Copyright © 2019 Samantha Cortopassi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 0
    var targetValue: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        startNewRound()

    }
    
    @IBAction func showAlert() {
        var difference = currentValue - targetValue
        if difference < 0 {
            difference = difference * -1
        }
        
//        if currentValue > targetValue {
//            difference = currentValue - targetValue
//        } else if targetValue > currentValue {
//            difference = targetValue - currentValue
//        } else {
//            difference = 0
//        }
        
        let message = "the value of the slider is now: \(currentValue)" + "\nThe target value is: \(targetValue)" + "\n the difference is: \(difference)"
        
    let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        
    let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
    }

    @IBAction func sliderMoved(_ slider: UISlider) {
        let roundedValue = slider.value.rounded()
        currentValue = Int(slider.value)
    }
    func startNewRound() {
        targetValue = Int(arc4random_uniform(100))+1
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
    }

}

