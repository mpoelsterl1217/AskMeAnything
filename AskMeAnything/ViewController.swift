//
//  ViewController.swift
//  AskMeAnything
//
//  Created by Matthew Poelsterl on 7/19/21.
//

import UIKit

class ViewController: UIViewController {
    //Globals
    var ballNameArray = ["Certain", "ConcentrateAskAgain", "OutlookNotGood", "SignsYes", "SourcesNo"]
    var randomNum: Int = 0
    func newBallImage() {
        randomNum = Int.random(in: 0...4)
        ballImageView.image = UIImage(named: ballNameArray[randomNum])
    }
    
    //Outlets
    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Actions
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
}

