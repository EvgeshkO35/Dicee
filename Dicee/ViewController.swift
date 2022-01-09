//
//  ViewController.swift
//  Dicee
//
//  Created by Evgenii Lysenko on 1/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    // IBOutlets that show you two ImageView with dices on your screen
    @IBOutlet weak var diceViewImage1: UIImageView!
    @IBOutlet weak var diceViewImage2: UIImageView!
    
    // IBAction that show what happen if you pressed the roll button
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // Array of dice images
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        // Randomise the dice images with .randomElement() inside the array
        diceViewImage1.image = diceArray.randomElement() // We can use Int.random(in: 0...5) for randomise
        diceViewImage2.image = diceArray.randomElement()
    }
    
}

