//
//  SelectTimeViewController.swift
//  ReuseablePopups
//
//  Created by John Martin on 11/28/17.
//  Copyright © 2017 John R. Martin. All rights reserved.
//

import UIKit

class SelectTimeViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func selectTimeAction(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "DatePopupViewController", bundle: Bundle.main)
        guard let popupViewController = storyBoard.instantiateInitialViewController() else { return }
        present(popupViewController, animated: true)
    }
}
