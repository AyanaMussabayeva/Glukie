//
//  SelectLogViewController.swift
//  Glukie
//
//  Created by Akerke Okapova on 4/24/18.
//  Copyright © 2018 Akerke Okapova. All rights reserved.
//

import UIKit

extension Constants {
    
    static let createLogSegue = "ShowCreateLog"
    static let showLogsSegue = "ShowLogs"
    static let showAchievementsSegue = "ShowAchievements"
    static let showConnectionSegue = "ShowConnection"
}

class SelectLogViewController: UIViewController {
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var childNameLabel: UILabel!
    @IBOutlet weak var characterImageView: UIImageView!
    
    
    @IBAction func logButtonSelected(_ sender: UIButton) {
        let title = sender.currentTitle
        //print(title)
        if title != nil && Constants.logTypeNames.contains(title!){
            print(title!)
            var log = Log()

            log.name = title!
            log.logo = Constants.logTypeLogos[title!]
            log.unit = Constants.logUnits[title!]
            log.level = Constants.logLevelNormal
            log.type = Constants.logTypes[title!]![0]
            
            performSegue(withIdentifier: Constants.createLogSegue, sender: log)
        }
    }
    
    @IBAction func logsSelected(_ sender: Any) {
        performSegue(withIdentifier: Constants.showLogsSegue, sender: nil)
    }
    
    @IBAction func connectionrSelected(_ sender: Any) {
         performSegue(withIdentifier: "showConnection", sender: nil)
    }
    
    @IBAction func achievementsSelected(_ sender: Any) {
        performSegue(withIdentifier: Constants.showAchievementsSegue, sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segue.identifier! {
        case Constants.createLogSegue:
            let destinationVC = segue.destination as! CreateLogViewController
            destinationVC.log = sender as! Log
        default:
            break
        }
    }
    
    func updateUI(){
        childNameLabel?.text = cache.name
        characterImageView?.image = Constants.character[cache.gender]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
}
