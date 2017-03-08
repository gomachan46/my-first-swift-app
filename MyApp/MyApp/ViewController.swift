//
//  ViewController.swift
//  MyApp
//
//  Created by go nakanishi on 2017/03/09.
//  Copyright © 2017年 Go Nakanishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var label: UILabel!
  override func viewDidLoad() {
    super.viewDidLoad()
    let value: Int = 10 - 1
    label.text = "10 -1 = \(value)"
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

