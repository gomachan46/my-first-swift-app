//
//  ViewController.swift
//  calc
//
//  Created by go nakanishi on 2017/03/11.
//  Copyright © 2017年 Go Nakanishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceField: UITextField!
    
    override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
    }
    
    @IBAction func restart(_ segue: UIStoryboardSegue) {
        initPrice()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! PercentViewController
        viewController.price = currentPrice()
    }
  
    @IBAction func tap1Button(_ sender: Any) {
        updatePrice(price: "1")
    }
    
    @IBAction func tap2Button(_ sender: Any) {
        updatePrice(price: "2")
    }
    
    @IBAction func tap3Button(_ sender: Any) {
        updatePrice(price: "3")
    }
    
    @IBAction func tap4Button(_ sender: Any) {
        updatePrice(price: "4")
    }
    
    @IBAction func tap5Button(_ sender: Any) {
        updatePrice(price: "5")
    }
    
    @IBAction func tap6Button(_ sender: Any) {
        updatePrice(price: "6")
    }
    
    @IBAction func tap7Button(_ sender: Any) {
        updatePrice(price: "7")
    }
    
    @IBAction func tap8Button(_ sender: Any) {
        updatePrice(price: "8")
    }
    
    @IBAction func tap9Button(_ sender: Any) {
        updatePrice(price: "9")
    }
    
    @IBAction func tap0Button(_ sender: Any) {
        updatePrice(price: "0")
    }
    
    @IBAction func tap00Button(_ sender: Any) {
        updatePrice(price: "00")
    }
    
    @IBAction func tapCButton(_ sender: Any) {
        initPrice()
    }
    
    private func initPrice() {
        priceField.text = "0"
    }
    
    private func updatePrice(price: String) {
        // Int()することで"01"のような文字列を扱えるようにしている
        if let updatedPrice = Int("\(currentPrice())" + price) {
            priceField.text = "\(updatedPrice)"
        }
    }
    
    private func currentPrice() -> Int {
        guard let currentPrice = Int(priceField.text!) else {
            return 0
        }
      
        return currentPrice
    }
}
