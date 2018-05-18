//
//  Achievement.swift
//  Glukie
//
//  Created by Akerke Okapova on 4/25/18.
//  Copyright © 2018 Akerke Okapova. All rights reserved.
//

import Foundation
import UIKit

extension Constants {
    
    private enum CheckAchievementFunctions {
        case firstGlucose(() -> Bool)
        case firstFood(() -> Bool)
        case firstMedicine(() -> Bool)
        case firstActivity(() -> Bool)
    }
    
    static let achievements = [
        (title: "First glucose", logo: UIImage(named: "\(Constants.achievementRed).png"), name: Constants.glucose),
        (title: "First food", logo: UIImage(named: "\(Constants.achievementBlue).png"), name: Constants.food),
        (title: "First activity", logo: UIImage(named: "\(Constants.achievementGreen).png"), name: Constants.activity),
        (title: "First medicine", logo: UIImage(named: "\(Constants.achievementYellow).png"), name: Constants.medicine)
    ]
}

struct Achievement {
    
    var logo = Constants.achievements[0].logo
    var title = Constants.achievements[0].title
    var done = {cache.logContainsType(Constants.achievements[0].name)}
 
    init(logo: UIImage, title: String, done: @escaping (() -> Bool)){
        self.logo = logo
        self.title = title
        self.done = done
    }
}
