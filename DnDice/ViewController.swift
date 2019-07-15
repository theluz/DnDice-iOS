//
//  ViewController.swift
//  DnDice
//
//  Created by Rodrigo Luz on 15/07/19.
//  Copyright © 2019 Rodrigo Luz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndexLeft: Int = 1
    var randomDiceIndexRight: Int = 1
    let diceArray = ["d1","d2","d3","d4","d5","d6"]
    
    @IBOutlet weak var diceImageViewLeft: UIImageView!
    
    @IBOutlet weak var diceImageViewRight: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        randomDiceIndexLeft = Int.random(in:0 ... 5)
        randomDiceIndexRight = Int.random(in:0 ... 5)
        
        //        No Array Block
        diceImageViewLeft.image = UIImage(named: "d" +
            "\(randomDiceIndexLeft)")
        
        diceImageViewRight.image = UIImage(named: "d" + "\(randomDiceIndexRight)")
        
        print(randomDiceIndexLeft, randomDiceIndexRight)
        
        //        Array Block
        //        diceImageViewLeft.image = UIImage(named: diceArray[randomDiceIndexLeft])
        //
        //        diceImageViewRight.image = UIImage(named: diceArray[randomDiceIndexRight])
    }
    
}

