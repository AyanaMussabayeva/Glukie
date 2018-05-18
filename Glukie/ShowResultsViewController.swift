//
//  ShowResultsViewController.swift
//  Glukie
//
//  Created by Apple on 5/18/18.
//  Copyright © 2018 Akerke Okapova. All rights reserved.
//

import UIKit
import CoreBluetooth

class ShowResultsViewController: UIViewController, BluetoothSerialDelegate  {
    var previousGlucose = [String]()
    
    @IBOutlet var lastGlucoseLabel: UILabel!
    @IBOutlet var previousGlucoseLabel: UILabel!
    
    //АКЕРУКЕ, вот данные приходящие с блютуза
    func serialDidReceiveString(_ message: String) {
        //  вот этот стринг message
        lastGlucoseLabel.text! = message
        print(message)
        previousGlucose.append(message)
        viewGlucose()
    }
    
    
    func viewGlucose(){
        for item in previousGlucose{
            previousGlucoseLabel.text! += item
        } 
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        serial.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
