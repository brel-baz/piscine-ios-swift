//
//  DeathCellTableViewCell.swift
//  D02
//
//  Created by ELBAZ on 01/06/2018.
//  Copyright © 2018 pepe. All rights reserved.
//

import UIKit

func dateToString (_ date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .none
    dateFormatter.locale = Locale(identifier: "fr_FR")
    return dateFormatter.string(from: date)
}

class DeathCellTableViewCell: UITableViewCell {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var death: (String, String, Date)?{
        didSet{
            if let d = death {
                nameLabel?.text = d.0
                descriptionLabel?.text = d.1
                dateLabel?.text = dateToString(d.2)
            }
        }
    }

}
