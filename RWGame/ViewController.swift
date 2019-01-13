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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

