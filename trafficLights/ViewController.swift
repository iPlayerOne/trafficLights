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
    
    private let isOn: CGFloat = 1
    private let isOff: CGFloat = 0.3
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        redLight.layer.cornerRadius = redLight.frame.height / 2
        redLight.alpha = isOff
        
        yellowLight.layer.cornerRadius = yellowLight.frame.height / 2
        yellowLight.alpha = isOff
        
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
        greenLight.alpha = isOff
        
        controlButton.layer.cornerRadius = 10
        
    }

    private var pushCounter = 0
    
    
    @IBAction func controlButtonAction(_ sender: UIButton) {
        controlButton.setTitle("NEXT", for: .normal)
        switch pushCounter {
            case 0:
                greenLight.alpha = isOff
                redLight.alpha = isOn
                pushCounter += 1
            case 1:
                redLight.alpha = isOff
                yellowLight.alpha = isOn
                pushCounter += 1
            case 2:
                yellowLight.alpha = isOff
                greenLight.alpha = isOn
                pushCounter = 0
            default:
                break
        }
    }
}
