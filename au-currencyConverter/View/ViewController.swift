//
//  ViewController.swift
//  au-currencyConverter
//
//  Created by Ryan Johnson on 2/17/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountUSD: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    var converterLogic = ConverterLogic()
    
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
        errorLabel.text = ""
    }

    @IBAction func currency1Switch(_ sender: UISwitch) {
        converterLogic.setSwitch(sender.isOn, .UK)
    }
    
    @IBAction func currency2Switch(_ sender: UISwitch) {
        converterLogic.setSwitch(sender.isOn, .Russia)
    }
    
    @IBAction func currency3Switch(_ sender: UISwitch) {
        converterLogic.setSwitch(sender.isOn, .Mexico)
    }
    
    @IBAction func currency4Switch(_ sender: UISwitch) {
        converterLogic.setSwitch(sender.isOn, .France)
    }
    
    @IBAction func convertPressed(_ sender: UIButton) {
        guard let amount = amountUSD.text else { return }
        if let newInt = Int(amount) {
            if (newInt > 0) {
                if (converterLogic.getTotalEnabled() > 0) {
                    errorLabel.text = ""
                    converterLogic.setUSDAmount(newInt)
                    converterLogic.calculateCovertedAmounts()
                    USDLabelText = converterLogic.usa.getLabel() + " " + converterLogic.usa.getAmountText()
                    c1LabelText = converterLogic.uk.getLabel()
                    c1Amount = (converterLogic.uk.getAmountText())
                    c2LabelText = converterLogic.russia.getLabel()
                    c2Amount = (converterLogic.russia.getAmountText())
                    c3LabelText = converterLogic.mexico.getLabel()
                    c3Amount = (converterLogic.mexico.getAmountText())
                    c4LabelText = converterLogic.france.getLabel()
                    c4Amount = (converterLogic.france.getAmountText())
                    
                    self.performSegue(withIdentifier: "toCurrencyBreakdown", sender: self)
                } else {
                    errorLabel.text = "At least one currency must be selected."
                }
            } else {
                errorLabel.text = "USD amount must be an integer greater than 0"
            }
        } else {
            errorLabel.text = "Pleae enter the USD amount as an integer greater than 0"
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCurrencyBreakdown" {
            let navigation = segue.destination as! CurrencyBreakdown
            
            navigation.USDLabelText = USDLabelText
            navigation.c1LabelText = c1LabelText
            navigation.c2LabelText = c2LabelText
            navigation.c3LabelText = c3LabelText
            navigation.c4LabelText = c4LabelText
            navigation.c1Amount = c1Amount
            navigation.c2Amount = c2Amount
            navigation.c3Amount = c3Amount
            navigation.c4Amount = c4Amount
        }
    }
}

