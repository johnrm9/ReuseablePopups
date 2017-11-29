//
//  SelectTimeViewController.swift
//  ReuseablePopups
//
//  Created by John Martin on 11/28/17.
//  Copyright © 2017 John R. Martin. All rights reserved.
//

import UIKit

class SelectTimeViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    
    var observer: NSObjectProtocol?
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        observer =
            NotificationCenter.default.addObserver(forName: .saveDateTime, object: nil, queue: .main) { (notification) in
                let dateViewController = notification.object as! DatePopupViewController
                self.timeLabel.text = dateViewController.formattedTime
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        guard let observer = observer else { return }
        NotificationCenter.default.removeObserver(observer)
    }

    @IBAction func selectTimeAction(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "DatePopupViewController", bundle: Bundle.main)
        guard let popupViewController = storyBoard.instantiateInitialViewController() as? DatePopupViewController else { return }
        popupViewController.showTimePicker = true
        present(popupViewController, animated: true)
    }
}
