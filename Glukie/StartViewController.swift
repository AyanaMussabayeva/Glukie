//
//  StartViewController.swift
//  Glukie
//
//  Created by Akerke Okapova on 4/25/18.
//  Copyright © 2018 Akerke Okapova. All rights reserved.
//

import UIKit

extension Constants {
    
    static let showAppSegue = "ShowApp"
}

class StartViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    
    @IBAction func startButtonPressed(_ sender: Any) {
        if let name = nameTextField?.text, let age = ageTextField?.text {
            if name != "" && age != "" {
                cache.name = name
                cache.age = Int(age)!
                cache.gender = genderSegmentedControl.selectedSegmentIndex
                performSegue(withIdentifier: Constants.showAppSegue, sender: nil)
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 5
    }
}
