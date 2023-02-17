//
//  converterLogic.swift
//  au-currencyConverter
//
//  Created by Ryan Johnson on 2/17/23.
//

import Foundation

struct ConverterLogic {
    
    func getConversion(USD : Int, Country : Countries) -> Int {
        return Int(Float(USD) * getExchangeRate(Country))
    }
    
    func getExchangeRate(_ country : Countries) -> Float {
        switch country {
            case .UK :
                return 0.83
            case .Russia :
                return 74.42
            case .Mexico :
                return 18.40
            case .France :
                return 0.94
        }
    }
    
    

}
