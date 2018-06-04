//
//  ViewController.swift
//  D02
//
//  Created by ELBAZ on 30/05/2018.
//  Copyright © 2018 pepe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.pg")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(Data.info.count)
        return Data.info.count
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("Cellule")
        let cell = tableView.dequeueReusableCell(withIdentifier: "deathCell") as! DeathCellTableViewCell
        cell.death = Data.info[indexPath.row]
        return cell
    }
}
