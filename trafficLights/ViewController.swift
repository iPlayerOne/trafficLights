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
    private var activeLight = ActiveLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        redLight.alpha = isOff
        yellowLight.alpha = isOff
        greenLight.alpha = isOff
        
        controlButton.layer.cornerRadius = 10
    }
    
    override func viewDidLayoutSubviews() {
        
        redLight.layer.cornerRadius = redLight.frame.height / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.height / 2
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
    }
    
    @IBAction func controlButtonAction(_ sender: UIButton) {
        controlButton.setTitle("NEXT", for: .normal)
        
        switch activeLight {
            case .red:
                greenLight.alpha = isOff
                redLight.alpha = isOn
                activeLight = .yellow
            case .yellow:
                redLight.alpha = isOff
                yellowLight.alpha = isOn
                activeLight = .green
            case .green:
                yellowLight.alpha = isOff
                greenLight.alpha = isOn
                activeLight = .red
        }
    }
}

extension ViewController {
    private enum ActiveLight {
        case red, yellow, green
    }
}
