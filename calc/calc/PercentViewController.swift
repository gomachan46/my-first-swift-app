//
//  PercentViewController.swift
//  calc
//
//  Created by go nakanishi on 2017/03/12.
//  Copyright © 2017年 Go Nakanishi. All rights reserved.
//

import UIKit

class PercentViewController: UIViewController {
  
    @IBOutlet weak var percentField: UITextField!
    var price: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! ResultViewController
        viewController.price = price
        viewController.percent = currentPercent()
    }
    @IBAction func tap1Button(_ sender: Any) {
        updatePercent(input: "1")
    }
    
    @IBAction func tap2Button(_ sender: Any) {
        updatePercent(input: "2")
    }
    
    @IBAction func tap3Button(_ sender: Any) {
        updatePercent(input: "3")
    }
    
    @IBAction func tap4Button(_ sender: Any) {
        updatePercent(input: "4")
    }
    
    @IBAction func tap5Button(_ sender: Any) {
        updatePercent(input: "5")
    }
    
    @IBAction func tap6Button(_ sender: Any) {
        updatePercent(input: "6")
    }
    
    @IBAction func tap7Button(_ sender: Any) {
        updatePercent(input: "7")
    }
    
    @IBAction func tap8Button(_ sender: Any) {
        updatePercent(input: "8")
    }
    
    @IBAction func tap9Button(_ sender: Any) {
        updatePercent(input: "9")
    }
    
    @IBAction func tap0Button(_ sender: Any) {
        updatePercent(input: "0")
    }
    
    @IBAction func tap00Button(_ sender: Any) {
        updatePercent(input: "00")
    }
    
    @IBAction func tapCButton(_ sender: Any) {
        initPercent()
    }
    
    private func initPercent() {
        percentField.text = "0"
    }
    
    private func updatePercent(input: String) {
        // Int()することで"01"のような文字列を扱えるようにしている
        if let updatedPercent = Int("\(currentPercent())" + input) {
            percentField.text = "\(updatedPercent)"
        }
    }
    
    private func currentPercent() -> Int {
        guard let currentPercent = Int(percentField.text!) else {
            return 0
        }
        
        return currentPercent
    }
}
