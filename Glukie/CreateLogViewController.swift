//
//  CreateLogViewController.swift
//  Glukie
//
//  Created by Akerke Okapova on 4/24/18.
//  Copyright © 2018 Akerke Okapova. All rights reserved.
//

import UIKit

var dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yyyy HH:mm"
    return formatter
}()

var cache = Cache()

class CreateLogViewController: UIViewController {

    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var typeTextField: UITextField!
    @IBOutlet weak var notesTextField: UITextField!
    @IBOutlet weak var createLogNavBar: UINavigationItem!
    @IBOutlet weak var unitLabel: UILabel!
    
    var log = Log() {
        didSet {
            updateUI()
        }
    }
    
    let datePicker = UIDatePicker()
    let pickerView = UIPickerView()
    
    func updateUI() {
        unitLabel?.text = log.unit
        dateTextField?.text = dateFormatter.string(from: log.time)
        typeTextField?.text = log.type
    }
    
    @objc func createLog(){
        
        if let amount = Double(amountTextField.text!), let notes = notesTextField.text {
            log.amount = amount
            log.notes = notes
            cache.logs.append(log)
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createLogNavBar.rightBarButtonItem = UIBarButtonItem.init(title: "Create", style: .done, target: self, action: #selector(createLog))
        configureDatePicker()
        configurePickerView()
        updateUI()
        
    }
}

extension CreateLogViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Constants.logTypes[log.name]!.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Constants.logTypes[log.name]?[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    }
    
    func configurePickerView(){
        
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donePickerView));
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelPickerView));
        
        toolbar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        
        typeTextField.inputAccessoryView = toolbar
        typeTextField.inputView = pickerView
        pickerView.delegate = self
    }
    
    @objc func donePickerView(){
        log.type = Constants.logTypes[log.name]![pickerView.selectedRow(inComponent: 0)]
        self.view.endEditing(true)
    }
    
    @objc func cancelPickerView(){
        self.view.endEditing(true)
    }
}

extension CreateLogViewController {

    func configureDatePicker() {
        datePicker.datePickerMode = .dateAndTime
        
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneDatePicker));
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker));
        
        toolbar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        
        dateTextField.inputAccessoryView = toolbar
        dateTextField.inputView = datePicker
    }
    
    @objc func doneDatePicker(){
        
        log.time = datePicker.date
        self.view.endEditing(true)
    }
    
    @objc func cancelDatePicker(){
        self.view.endEditing(true)
    }
}
