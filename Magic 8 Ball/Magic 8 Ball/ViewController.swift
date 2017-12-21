//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Alexa Rohn on 12/15/17.
//  Copyright © 2017 Alexa Rohn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
     var randomBallNumber : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        newBallImage()
        
    }
    //this function generates a new ball image. The top is the random # generator, the bottom is what selects and changes the image based on the #, using array above
    func newBallImage() {
        randomBallNumber = Int(arc4random_uniform(5))

        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    //this function turns on motion shake triggered event. When you shake, newBallImage func is ran
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
        
    }
    
}

