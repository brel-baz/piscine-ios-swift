//
//  AddViewController.swift
//  D02
//
//  Created by ELBAZ on 31/05/2018.
//  Copyright © 2018 pepe. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var person: UITextField!
    
    @IBOutlet weak var dateOfDeath: UIDatePicker!
    @IBOutlet weak var detailDeath: UITextView!
    
    @IBAction func Done(_ sender: UIBarButtonItem) {
        if person.text!.count != 0 && detailDeath.text!.count != 0{
            Data.info.append((person.text!, detailDeath.text!, dateOfDeath.date))
            performSegue(withIdentifier: "isDone", sender: "pepe")
        }
        
    }
    
}
