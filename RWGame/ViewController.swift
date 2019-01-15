//
//  ViewController.swift
//  RWGame
//
//  Created by Samantha Cortopassi on 1/13/19.
//  Copyright © 2019 Samantha Cortopassi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showAlert() {

    let alert = UIAlertController(title: "Hello World", message: "this is my first app!", preferredStyle: .alert)
        
    let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }

    @IBAction func sliderMoved(_ slider: UISlider) {
        print("the value of the slider is now: \(slider.value)")
    }


}

