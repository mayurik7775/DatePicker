//
//  ViewController.swift
//  datepickerDemo_14_3_2023
//
//  Created by Mac on 13/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dispalyInputTextField: UITextField!
    @IBOutlet weak var dataPicker: UIDatePicker!
    
    var dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        dateFormatter.dateFormat = "MM-dd-YYYY"
        dispalyInputTextField.inputView = dataPicker
        dataPicker.datePickerMode = .date
        dispalyInputTextField.text = dateFormatter.string(from: dataPicker.date)
        
    }

    @IBAction func onDatePickerValueUpdated(_ sender: UIDatePicker) {
        dispalyInputTextField.text = dateFormatter.string(from: dataPicker.date)
        view.endEditing(true)
    }
    
}

