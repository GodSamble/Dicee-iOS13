//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //IBOutlet allows me to reference a UI element.
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
            //WHO   .  WHAT    =   VALUE
        diceImageView1.image=UIImage(named:"DiceSix")
        diceImageView1.alpha=0.5
        diceImageView2.image=UIImage(named:"DiceTwo")
    }
    //임의로 지정하는 것
    var leftDiceNumber=1
    var rightDiceNumber=5
    
    //어플 내에 ROL 버튼 누를 시 무작위로 변환하는 코드
    
    @IBAction func rollBottonPressed(_ sender: Any) {
        print("Button got tapped.")
        let diceArray = [UIImage(named:"DiceOne"),UIImage(named:"DiceTwo"),UIImage(named:"DiceThree"),UIImage(named:"DiceFour"),UIImage(named:"DiceFive"),UIImage(named:"DiceSix")]
        
        diceImageView1.image=UIImage(named:"DiceFour")
        diceImageView2.image=UIImage(named:"DiceFour")
        diceImageView1.image=diceArray[Int.random(in:0...5)]
        diceImageView2.image=diceArray[Int.random(in:0...5)]
        
        leftDiceNumber+=1
        rightDiceNumber-=1
    }
    

}

