//
//  CurrencyBreakdownViewController.swift
//  au-currencyConverter
//
//  Created by Ryan Johnson on 2/17/23.
//

import UIKit

class CurrencyBreakdown: UIViewController {

    @IBOutlet weak var USDLabel: UILabel!
    @IBOutlet weak var c1Label: UILabel!
    @IBOutlet weak var c2Label: UILabel!
    @IBOutlet weak var c3Label: UILabel!
    @IBOutlet weak var c4Label: UILabel!
    
    @IBOutlet weak var c1AmountLabel: UILabel!
    @IBOutlet weak var c2AmountLabel: UILabel!
    @IBOutlet weak var c3AmountLabel: UILabel!
    @IBOutlet weak var c4AmountLabel: UILabel!
    
    var USDLabelText = ""
    var c1LabelText = ""
    var c2LabelText = ""
    var c3LabelText = ""
    var c4LabelText = ""
    var c1Amount = ""
    var c2Amount = ""
    var c3Amount = ""
    var c4Amount = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        USDLabel.text = USDLabelText
        c1Label.text = c1LabelText
        c2Label.text = c2LabelText
        c3Label.text = c3LabelText
        c4Label.text = c4LabelText
        c1AmountLabel.text = c1Amount
        c2AmountLabel.text = c2Amount
        c3AmountLabel.text = c3Amount
        c4AmountLabel.text = c4Amount
    }
    

    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
