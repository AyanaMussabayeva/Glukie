//
//  AchievementsCollectionViewController.swift
//  Glukie
//
//  Created by Akerke Okapova on 4/25/18.
//  Copyright © 2018 Akerke Okapova. All rights reserved.
//

import UIKit

extension Constants {
    
    static let achievementCellIdentifier = "AchievementCell"
}

class AchievementsCollectionViewController: UICollectionViewController {

    let lineSpacing : CGFloat = 10
    let inset : CGFloat = 30
    let width : CGFloat = 150
    let height : CGFloat = 200
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let img = #imageLiteral(resourceName: "background-blue")
        self.collectionView?.layer.contents = img.cgImage
        cache.getAchievements()
        print(cache.achievements)

    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {

        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return cache.achievements.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.achievementCellIdentifier, for: indexPath) as! AchievementCollectionViewCell
        
        cell.achievement = cache.achievements[indexPath.row]
        //        cell.updateUI()
        return cell
    }

}

extension AchievementsCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return lineSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
    }
}
