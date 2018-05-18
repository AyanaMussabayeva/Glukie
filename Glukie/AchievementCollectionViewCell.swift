//
//  AchievementCollectionViewCell.swift
//  Glukie
//
//  Created by Akerke Okapova on 4/25/18.
//  Copyright © 2018 Akerke Okapova. All rights reserved.
//

import UIKit

class AchievementCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var achievement: Achievement! {
        didSet{
            updateUI()
        }
    }
    
    func updateUI() {
        
        
        logoImageView?.image = (achievement.done() ? achievement.logo : Constants.achievementLockedLogo)
        titleLabel?.text = achievement.title
    }
}
