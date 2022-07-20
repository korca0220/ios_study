//
//  ViewController.swift
//  Generator
//
//  Created by 박준우 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "죽음을 두려워하는 나머지 삶을 시작조차 못하는 사람이 많다", name: "반다이크"),
        Quote(contents: "죽음을 두려워하는 나머지 삶을 시작조차 못하는 사람이 많다", name: "박준우"),
        Quote(contents: "죽음을 두려워하는 나머지 삶을 시작조차 못하는 사람이 많다", name: "하이"),
        Quote(contents: "죽음을 두려워하는 나머지 삶을 시작조차 못하는 사람이 많다", name: "호우"),
        Quote(contents: "죽음을 두려워하는 나머지 삶을 시작조차 못하는 사람이 많다", name: "헤이"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(5))
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name        
    }
    
}

