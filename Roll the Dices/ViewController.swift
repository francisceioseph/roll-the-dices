//
//  ViewController.swift
//  Roll the Dices
//
//  Created by Francisco on 05/10/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceOneImageView: UIImageView!
    @IBOutlet weak var diceTwoImageView: UIImageView!

    let diceFaces = [
        UIImage(named: "DiceOne"),
        UIImage(named: "DiceTwo"),
        UIImage(named: "DiceThree"),
        UIImage(named: "DiceFour"),
        UIImage(named: "DiceFive"),
        UIImage(named: "DiceSix"),
    ]

    
    @IBAction func onRollButtonPress(_ sender: Any) {
        let diceOneImageIndex = Int.random(in: 0...5)
        let diceTwoImageIndex = Int.random(in: 0...5)
        
        diceOneImageView.image = diceFaces[diceOneImageIndex]
        diceTwoImageView.image = diceFaces[diceTwoImageIndex]
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceOneImageView.layer.cornerRadius = 32
        diceTwoImageView.layer.cornerRadius = 32
    }
}

