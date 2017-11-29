//
//  FirstViewController.swift
//  ReuseablePopups
//
//  Created by John R. Martin on 11/27/17.
//  Copyright © 2017 John R. Martin. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDatePopupViewControllerSegue" {
            let popupViewControler = segue.destination as! DatePopupViewController
            popupViewControler.showTimePicker = false
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

