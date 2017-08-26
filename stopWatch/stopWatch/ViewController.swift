//
//  ViewController.swift
//  stopWatch
//
//  Created by Jonny Holupchinski on 8/24/17.
//  Copyright © 2017 Jonny Holupchinski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var time = 0
    var stopWatch = Timer()
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func start(_ sender: Any) {
        stopWatch = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.tick), userInfo: nil, repeats: true)
    }
    
    @IBAction func stop(_ sender: Any) {
        stopWatch.invalidate()
    }
    
    @IBAction func reset(_ sender: Any) {
        stopWatch.invalidate()
        time = 0
        label.text = String(0)
    }
    
    func tick() {
        time += 1
        label.text = String(time)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

