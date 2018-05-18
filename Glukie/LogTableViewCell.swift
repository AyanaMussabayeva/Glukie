//
//  LogTableViewCell.swift
//  Glukie
//
//  Created by Akerke Okapova on 4/25/18.
//  Copyright © 2018 Akerke Okapova. All rights reserved.
//

import UIKit

class LogTableViewCell: UITableViewCell {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var unitLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    var log: Log! {
        didSet{
            updateUI()
        }
    }
    
    func updateUI(){
        logoImageView?.image = log.logo!
        amountLabel?.text = "\(log.amount)"
        unitLabel?.text = log.unit
        nameLabel?.text = log.name.capitalized
        dateLabel?.text = dateFormatter.string(from: log.time)
    }
}
