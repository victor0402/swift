//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPress(_ sender: UIButton) {
        let dices = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        let leftDiceNumber = Int.random(in: 1...5)
        let rightDiceNumber = Int.random(in: 1...5)
        
        diceImageView1.image = dices[leftDiceNumber]
        diceImageView2.image = dices[rightDiceNumber]
        
        let didLeftWon = leftDiceNumber > rightDiceNumber
        diceImageView1.alpha = didLeftWon ? 1 : 0.5
        diceImageView2.alpha = didLeftWon ? 0.5 : 1
    }
    
}

