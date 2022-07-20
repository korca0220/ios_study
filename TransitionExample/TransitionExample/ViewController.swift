//
//  ViewController.swift
//  TransitionExample
//
//  Created by 박준우 on 2022/07/12.
//

import UIKit

protocol SendDataDelegate: AnyObject{
    func sendData(name: String)
}


class ViewController: UIViewController, SendDataDelegate {
    @IBOutlet weak var nameLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tapCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePushViewController") as? CodePushViewController else {return}
        viewController.name = "Junewoo"
        viewController.delegate = self
        self.navigationController?.pushViewController(viewController, animated: true)
        
    
    }
    
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") as? CodePresentViewController else {return}
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "Junewoo"
        viewController.delegate = self
        self.present(viewController, animated: true, completion: nil)
                
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SeguePushViewController {
            viewController.name = "Junewoo"
        }else {return}
    }
    
    func sendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
}

