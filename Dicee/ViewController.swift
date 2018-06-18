//
//  ViewController.swift
//  Dicee
//
//  Created by Sean Groff on 6/15/18.
//  Copyright © 2018 Sean Groff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setDiceImages()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getRandomNumber(maxNum: Int) -> Int {
        return Int(arc4random_uniform(UInt32(maxNum)))
    }
    
    func setImage(img: UIImageView, imgIndex: Int) {
       let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
        
       img.image = UIImage(named: diceArray[imgIndex])
    }
    
    func setDiceImages() {
        randomDiceIndex1 = getRandomNumber(maxNum: 6)
        randomDiceIndex2 = getRandomNumber(maxNum: 6)
        
        setImage(img: diceImageView1, imgIndex: randomDiceIndex1)
        setImage(img: diceImageView2, imgIndex: randomDiceIndex2)
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        setDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        setDiceImages()
    }
    
}

