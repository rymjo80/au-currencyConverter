//
//  converterLogic.swift
//  au-currencyConverter
//
//  Created by Ryan Johnson on 2/17/23.
//

import Foundation

struct ConverterLogic {
    var usd : Int = 0;
    
    var usa = Country(label: "USD", enabled: true, exchangeRate: 1.0, locale: Locale(identifier: "en_US"))
    var uk = Country(label: "Pound (UK)", enabled: true, exchangeRate: 0.83, locale: Locale(identifier: "en_GB"))
    var russia = Country(label: "Ruble (Russia)", enabled: true, exchangeRate: 74.0, locale: Locale(identifier: "ru_RU"))
    var mexico = Country(label: "Peso (Mexico)", enabled: true, exchangeRate: 18.4, locale: Locale(identifier: "es_MX"))
    var france = Country(label: "Euro (France)", enabled: true, exchangeRate: 0.94, locale: Locale(identifier: "fr_FR"))
    
    
    mutating func setSwitch(_ isOn : Bool, _ country : Countries) {
        switch country {
        case .UK :
            uk.setEnabled(isOn)
        case .Russia :
            russia.setEnabled(isOn)
        case .Mexico :
            mexico.setEnabled(isOn)
        case .France :
            france.setEnabled(isOn)
        }
    }
    
    mutating func setUSDAmount(_ amount : Int) {
        usd = amount
    }
    
    mutating func calculateCovertedAmounts() {
        usa.setConvertedAmount(getConversion(usa.exchangeRate))
        uk.setConvertedAmount(getConversion(uk.exchangeRate))
        russia.setConvertedAmount(getConversion(russia.exchangeRate))
        mexico.setConvertedAmount(getConversion(mexico.exchangeRate))
        france.setConvertedAmount(getConversion(france.exchangeRate))
    }
    
    func getConversion(_ exchangeRate : Float) -> Float {
        return Float(usd) * exchangeRate
    }
    
    func getTotalEnabled() -> Int {
        var count = 0
        if (uk.enabled) {
            count += 1
        }
        if (russia.enabled) {
            count += 1
        }
        if (mexico.enabled) {
            count += 1
        }
        if (france.enabled) {
            count += 1
        }
        
        return count
    }

}
