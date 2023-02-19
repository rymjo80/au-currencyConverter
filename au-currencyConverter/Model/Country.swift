//
//  Country.swift
//  au-currencyConverter
//
//  Created by Ryan Johnson on 2/17/23.
//

import Foundation

struct Country {
    var label : String
    var enabled : Bool
    var exchangeRate : Float
    var convertedAmount : Float = 0
    var locale : Locale
    
    init (label: String, enabled: Bool, exchangeRate : Float, locale : Locale) {
        self.label = label
        self.enabled = enabled
        self.exchangeRate = exchangeRate
        self.locale = locale
    }
    
    func getLabel() -> String {
        if (enabled) {
            return label
        } else {
            return ""
        }
    }
    
    func getEnabled() -> Bool {
        return enabled
    }
    
    mutating func setEnabled(_ value : Bool) {
        enabled = value
    }
    
    func getExchangeRate() -> Float{
        return exchangeRate
    }
    
    mutating func setExchangeRate(_ rate : Float) {
        exchangeRate = rate
    }
    
    mutating func setConvertedAmount(_ newAmount: Float) {
        convertedAmount = newAmount
    }
    
    func getConvertedAmount() -> Float {
        return convertedAmount
    }
    
    func getAmountText() -> String {
        var amountText = ""
        if (enabled) {
            amountText = formatCurrency(NSNumber(value: convertedAmount))
            return amountText
        }
        return amountText
    }
    
    func formatCurrency(_ amount : NSNumber) -> String {
        let currencyFormatter = NumberFormatter()
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        currencyFormatter.locale = locale

        return currencyFormatter.string(from: amount)!
    }
}
