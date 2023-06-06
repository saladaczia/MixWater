//
//  BrainModel.swift
//  Zmieszaj Wodę
//
//  Created by Maciej Sołoducha on 05/06/2023.
//

import Foundation

struct BrainModel {
    
    // Model declaration
    var model = Model()
    
    // Function for get user data
    mutating func giveValue(water: String?, temp: String?, hot: String?, cold: String?) {
        if let waterS = water, let tempS = temp, let hotS = hot, let coldS = cold {
            model.waterInt = Int(waterS)
            model.tempInt = Int(tempS)
            model.hotInt = Int(hotS)
            model.coldInt = Int(coldS)
        }
        // Running function for continue calculation
        calculateTemp()
    }
    // Continuation of calculations
    mutating func calculateTemp() {
        model.firstValue = model.tempInt! - model.coldInt!
        model.secondValue = model.hotInt! - model.coldInt!
        model.bouthValue =  Double(model.firstValue!) / Double(model.secondValue!)
        
    }
    // Final calculation for get hot temperature
    mutating func getHotTemp() -> Int {
        model.hotCalcTemperature = Double(model.waterInt!) * model.bouthValue!
        let hotConvertedInt = Int(model.hotCalcTemperature!)
        return hotConvertedInt
    }
    // Final calculation for get cold temperature
    mutating func getColdTemp() -> Int {
        model.coldCalcTemperature = model.waterInt! - Int(model.hotCalcTemperature!)
        let coldConvertedInt = model.coldCalcTemperature!
        return coldConvertedInt
    }
    
}
