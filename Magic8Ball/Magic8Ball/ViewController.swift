//
//  ViewController.swift
//  Magic8Ball
//
//  Created by NomNomNam on 2/19/18.
//  Copyright © 2018 NamHNguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber = 0
        
    @IBOutlet weak var ballImageView: UIImageView!
    
    @IBAction func shakeButtonPressed(_ sender: Any) {
        newBallImage()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage(){
        randomBallNumber = Int(arc4random_uniform(5))
        ballImageView.image = UIImage(named: ballArray[randomBallNumber])
    }


}

