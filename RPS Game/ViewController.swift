//
//  ViewController.swift
//  RPS Game
//
//  Created by Zamanbek Kozhas on 21.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rpsImageView1: UIImageView!
    @IBOutlet weak var rpsImageView2: UIImageView!
    @IBOutlet weak var rpsButtonThrow: UIButton!
    
    
    let images = [
    UIImage(named: "paper"),
    UIImage(named: "rock"),
    UIImage(named: "scissors")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func rpsButtonTappedThrow(_ sender: Any) {
        print("User tapped button")
        rpsButtonThrow.setTitle("Play", for: .normal)
        rpsImageView1.image = images[randomImageIndex()]
        rpsImageView2.image = images[randomImageIndex()]
    }
    
    func randomImageIndex() -> Int {
        return Int.random(in: 0..<images.count)
    }
    
}

