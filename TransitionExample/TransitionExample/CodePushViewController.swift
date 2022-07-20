//
//  CodePushViewController.swift
//  TransitionExample
//
//  Created by 박준우 on 2022/07/12.
//

import UIKit

class CodePushViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var name:String?
    weak var delegate : SendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name{
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }

    }
 
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "Last CodePush")
        self.navigationController?.popViewController(animated: true)
    }
}
