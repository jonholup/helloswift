//
//  ViewController.swift
//  Hello World
//
//  Created by Jonny Holupchinski on 8/24/17.
//  Copyright © 2017 Jonny Holupchinski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UITextField!
    @IBOutlet weak var input: UITextField!
    
    @IBAction func actionBtn(_ sender: Any) {
        display.text = "Hello, " + (input.text?.capitalized)!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

