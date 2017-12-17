//
//  ViewController.swift
//  DiceRoll
//
//  Created by Vanilla on 12/10/17.
//  Copyright © 2017 digital villa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //App varables
    var randomDice1 : Int = 0
    var randomDice2 : Int = 0
    let dice = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    //Dice Outlets
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    ////----Default------///
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    ///-----------///
    
    // button function
    @IBAction func rollBtnPressed(_ sender: UIButton) {
       rndmGen()
   }
    
    // Motion handler
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        rndmGen()
    }
    
    //Main Dice Generator
    func rndmGen() {
        //Get Random num
        randomDice1 = Int(arc4random_uniform(6))
        randomDice2 = Int(arc4random_uniform(6))
        
        // Change UI image
        diceImageView1.image = UIImage(named: dice[randomDice1])
        diceImageView2.image = UIImage(named: dice[randomDice2])
    }

}

