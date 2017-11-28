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
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func saveButtonAction(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
