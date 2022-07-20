//
//  SeguePresentViewController.swift
//  TransitionExample
//
//  Created by 박준우 on 2022/07/12.
//

import UIKit

class SeguePresentViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
