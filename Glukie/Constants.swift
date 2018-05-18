//
//  Constants.swift
//  Glukie
//
//  Created by Akerke Okapova on 4/24/18.
//  Copyright © 2018 Akerke Okapova. All rights reserved.
//

import Foundation
import UIKit

struct Constants {
    
    static let numberOfSections = 2
    static let numberOfItemsInSection = 2
    
    static let glucose = "glucose"
    static let activity = "activity"
    static let food = "food"
    static let medicine = "medicine"
    static let achievementLocked = "grey-trophy"
    static let achievementRed = "red-trophy"
    static let achievementBlue = "blue-trophy"
    static let achievementYellow = "yellow-trophy"
    static let achievementGreen = "green-trophy"
    
    static let logTypeNames = [glucose, activity, food, medicine]
    
    static let logTypeLogos = [
        glucose: UIImage(named: "\(glucose).png"),
        activity: UIImage(named: "\(activity).png"),
        food: UIImage(named: "\(food).png"),
        medicine: UIImage(named: "\(medicine).png"),
    ]
    
    static let logTypes = [
        glucose: ["No type", "Before breakfast", "After breakfast", "Before lunch", "After lunch", "Before dinner", "After dinner", "Before snack", "After snack", "Other"],
        activity: ["No type", "Before breakfast", "After breakfast", "Before lunch", "After lunch", "Before dinner", "After dinner", "Before snack", "After snack", "Other"],
        food: ["Breakfast", "Lunch", "Dinner", "Snack", "Other"],
        medicine: ["No type", "Before breakfast", "After breakfast", "Before lunch", "After lunch", "Before dinner", "After dinner", "Before snack", "After snack", "Other"],
    ]
    
    static let logUnits = [
        glucose: "mmol/L",
        activity: "mins",
        food: "b/u",
        medicine: "units",
    ]
    
    static let logLevelLow = "Low"
    static let logLevelNormal = "Normal"
    static let logLevelHigh = "High"
    
    
    static let achievementLockedLogo = UIImage(named: "grey-trophy.png")
    static let achievementLogos = [
        UIImage(named: "\(achievementLocked).png"),
    ]
    
    static let character = [UIImage(named: "girl-good.png"), UIImage(named: "boy-good.png")]
}
