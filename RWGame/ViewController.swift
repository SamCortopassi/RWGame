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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        startNewRound()

//            Int.random(in: 1...100)
    }
    
    @IBAction func showAlert() {
        let message = "the value of the slider is now: \(currentValue)" + "\nThe target value is: \(targetValue)"
        
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
    }

}

