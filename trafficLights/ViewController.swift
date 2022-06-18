//
//  ViewController.swift
//  trafficLights
//
//  Created by ikorobov on 18.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var controlButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        
        greenLight.layer.cornerRadius =
        greenLight.frame.width / 2
    }


    @IBAction func controlButtonAction(_ sender: UIButton) {
    }
}

