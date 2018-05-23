//
//  ViewController.swift
//  ex01
//
//  Created by ELBAZ on 23/05/2018.
//  Copyright © 2018 pepe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    
    @IBAction func clickButton(_ sender: UIButton) {
        helloLabel.text = "Hello World !"
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

