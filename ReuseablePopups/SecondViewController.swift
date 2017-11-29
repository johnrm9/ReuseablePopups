//
//  SecondViewController.swift
//  ReuseablePopups
//
//  Created by John R. Martin on 11/27/17.
//  Copyright © 2017 John R. Martin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    
    var observer: NSObjectProtocol?
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        observer =
            NotificationCenter.default.addObserver(forName: .saveDateTime, object: nil, queue: .main) { (notification) in
                let dateViewController = notification.object as! DatePopupViewController
                self.dateLabel.text = dateViewController.formattedDate
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        guard let observer = observer else { return }
        NotificationCenter.default.removeObserver(observer)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDatePopupViewControllerSegue" {
            let popupViewControler = segue.destination as! DatePopupViewController
            popupViewControler.showTimePicker = false
        }
    }

}

