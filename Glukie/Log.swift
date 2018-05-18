//
//  Log.swift
//  Glukie
//
//  Created by Akerke Okapova on 4/24/18.
//  Copyright © 2018 Akerke Okapova. All rights reserved.
//

import Foundation

struct Log {
    var name = Constants.glucose
    var logo = Constants.logTypeLogos[Constants.glucose]
    var amount: Double = 0
    var unit = Constants.logUnits[Constants.glucose]
    var level = Constants.logLevelNormal
    var type = Constants.logTypes[Constants.glucose]![0]
    var time = Date()
    var notes = ""
}
