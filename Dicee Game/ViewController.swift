//
//  ViewController.swift
//  Dicee Game
//
//  Created by Alexandr Ulyanov on 28.01.2022.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet var firstDiceeImage: UIImageView!
    
    @IBOutlet var secondDiceeImage: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumb = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
  
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
       
        if leftDiceNumber < 6 {
            firstDiceeImage.image = [#imageLiteral(resourceName: "DiceOne") , #imageLiteral(resourceName: "DiceTwo") , #imageLiteral(resourceName: "DiceThree") , #imageLiteral(resourceName: "DiceFour") , #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ] [leftDiceNumber]
            leftDiceNumber += 1
        } else {
            leftDiceNumber = 0
        }
        
        if rightDiceNumb < 6 {
            secondDiceeImage.image = [#imageLiteral(resourceName: "DiceOne") , #imageLiteral(resourceName: "DiceTwo") , #imageLiteral(resourceName: "DiceThree") , #imageLiteral(resourceName: "DiceFour") , #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ] [rightDiceNumb]
            rightDiceNumb += 1
        } else {
            rightDiceNumb = 0
        }
        
        
    }
    
}

