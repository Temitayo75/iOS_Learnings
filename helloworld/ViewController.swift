//
//  ViewController.swift
//  HelloWorld
//
//  Created by owner on 25/04/2020.
//  Copyright © 2020 AppCoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func showMessage(sender: UIButton) {
        
        // Initializng the dictionary
           let emojiDict = [ "👾": "Alien Monster",
            "👻" : "Ghost",
           "🤓" : "Nerd",
           "😤" : "Angry",
           "😱" : "Scream",
           "🤖" : "Robot Face"
          ]
           
        let selectedButton = sender
        
        
        if let wordToLookup = selectedButton.titleLabel?.text {
                let meaning = emojiDict[wordToLookup]
              
                let alertController = UIAlertController(title: "Meaning", message: meaning, preferredStyle: UIAlertController.Style.alert)

                alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                present(alertController, animated: true, completion: nil)
            }

        }
       

}

