//
//  DatePopupViewController.swift
//  ReuseablePopups
//
//  Created by John Martin on 11/27/17.
//  Copyright © 2017 John R. Martin. All rights reserved.
//

import UIKit

class DatePopupViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var saveDateButton: UIButton!
    
    var showTimePicker: Bool = false
    
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: datePicker.date)
    }
    
    var formattedTime: String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter.string(from: datePicker.date)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if showTimePicker {
            titleLabel.text = "Select Time"
            datePicker.datePickerMode = .time
            saveDateButton.setTitle("Save Time", for: .normal)
        } else {
            titleLabel.text = "Select Date"
            datePicker.datePickerMode = .date
            saveDateButton.setTitle("Save Date", for: .normal)
        }

    }

    @IBAction func saveButtonAction(_ sender: UIButton) {
        NotificationCenter.default.post(name: .saveDateTime, object: self)
        dismiss(animated: true)
    }
}
