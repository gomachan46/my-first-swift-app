//
//  ResultViewController.swift
//  calc
//
//  Created by go nakanishi on 2017/03/12.
//  Copyright © 2017年 Go Nakanishi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultField: UITextField!
    var price: Int = 0
    var percent: Int = 0
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let percentValue = Float(percent) / 100
        let discountPrice = Float(price) * percentValue
        let percentOffPrice = price - Int(discountPrice)
        
        resultField.text = "\(percentOffPrice)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
