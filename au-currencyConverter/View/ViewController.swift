//
//  ViewController.swift
//  au-currencyConverter
//
//  Created by Ryan Johnson on 2/17/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountUSD: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func currency1Switch(_ sender: UISwitch) {
        
    }
    
    @IBAction func currency2Switch(_ sender: UISwitch) {
        
    }
    
    @IBAction func currency3Switch(_ sender: UISwitch) {
        
    }
    
    @IBAction func currency4Switch(_ sender: UISwitch) {
       
    }
    
    @IBAction func convertPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toCurrencyBreakdown", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCurrencyBreakdown" {
            let navigation = segue.destination as! CurrencyBreakdown
        }
    }
}

