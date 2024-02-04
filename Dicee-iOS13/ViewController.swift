//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstDice: UIImageView!
    
    @IBOutlet weak var secondDice: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func rollingDice(_ sender: Any) {
        
        let dices = [
            UIImage(named: "DiceOne"),
            UIImage(named: "DiceTwo"),
            UIImage(named: "DiceThree"),
            UIImage(named: "DiceFour"),
            UIImage(named: "DiceFive"),
            UIImage(named: "DiceSix"),]

        firstDice.image = dices[Int(arc4random_uniform(6))]
        
        secondDice.image = dices[Int(arc4random_uniform(6))]
    }
}

