//
//  FinalController.swift
//  Zmieszaj Wodę
//
//  Created by Maciej Sołoducha on 23/01/2023.
//

import UIKit

class FinalController: UIViewController {
    
    // Final temperature value
    var coldTemp: Int?
    var hotTemp: Int?
    
    // Outlets labels
    @IBOutlet weak var coldText: UILabel!
    @IBOutlet weak var hotText: UILabel!
    
   // ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // Unwraped optionals
        if let cold = coldTemp, let hot = hotTemp {
            coldText.text = "\(cold) ml cold water"
            hotText.text = "\(hot) ml hot water"
        }
    }
    
    // Button for return to previous screen
    @IBAction func returnButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
