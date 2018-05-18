//
//  Cache.swift
//  Glukie
//
//  Created by Akerke Okapova on 4/24/18.
//  Copyright © 2018 Akerke Okapova. All rights reserved.
//

import Foundation

struct Cache {
    
    var name = ""
    var age = 0
    var gender = 0

    var logs: [Log] = []
    var achievements: [Achievement] = []
    
    mutating func getAchievements() {
        if achievements.count > 0 { return }
        for a in Constants.achievements{
            let achiev = Achievement(logo: a.logo!, title: a.title, done: {cache.logContainsType(a.name)})
            achievements.append(achiev)
        }
    }
    
    func logContainsType(_ type: String) -> Bool {
        for log in logs{
            if log.name == type {
                return true
            }
        }
        return false
    }
}
