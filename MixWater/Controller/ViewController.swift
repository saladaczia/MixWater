//
//  ViewController.swift
//  Zmieszaj Wodę
//
//  Created by Maciej Sołoducha on 23/01/2023.
//

import UIKit

class ViewController: UIViewController {

// Outlets TextFields
    @IBOutlet weak var waterValue: UITextField!
    @IBOutlet weak var finalTemperatureValue: UITextField!
    @IBOutlet weak var hotTemperatureValue: UITextField!
    @IBOutlet weak var coldTemperatureValue: UITextField!
    
    // Outlet Label Alert
    @IBOutlet weak var alertLabel: UILabel!
    
    // ViewModel declaration
    var brainModel = BrainModel()
    
    // VieDidLoad function
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backButton = UIBarButtonItem()      // Bar button declaration
        backButton.title = "Back"     // Set back button title
        backButton.tintColor = UIColor.white    // Set back button color
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton    // Creating back button for second view
        
        
        
    }

    @IBAction func calculateButton(_ sender: UIButton) {
        // Creating condition for user value
        if waterValue.text != "" && finalTemperatureValue.text != "" && hotTemperatureValue.text != "" && coldTemperatureValue.text != "" {
            brainModel.giveValue(water: waterValue.text, temp: finalTemperatureValue.text, hot: hotTemperatureValue.text, cold: coldTemperatureValue.text)
            
            // Change str user value to int
            let hotInt = Int(hotTemperatureValue.text!)
            let coldInt = Int(coldTemperatureValue.text!)
            let finalInt = Int(finalTemperatureValue.text!)
            
            // Create condition for to low temp value
            if  hotInt! > coldInt! && coldInt! < finalInt!{
                
                // Make segue if all value user writening
                self.performSegue(withIdentifier: "goToSecondView", sender: self)
                
                // Dont show alert label
                DispatchQueue.main.async {
                    self.alertLabel.isHidden = true
                }
                
            } else if coldInt! > finalInt! {
                showAlert(text: "The water temperature is too low to achieve.")
            } else {
                showAlert(text: "The hot water temperature is too low.")
            }
            
        } else {
            // If dont any user value showed alert label
            showAlert(text: "Please fill in all the values.")
        }
    }
    
    // Function for show alert if any user value is wrong
    func showAlert (text: String) {
        DispatchQueue.main.async {
            self.alertLabel.text = text
            self.alertLabel.isHidden = false
        }
    }
    // Creating prepare for segue into second view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondView" {
            let destinationSVC = segue.destination as! FinalController
            // Uploading final temperature value to second view
            destinationSVC.hotTemp = brainModel.getHotTemp()
            destinationSVC.coldTemp = brainModel.getColdTemp()
            
        }
    }
    
}

