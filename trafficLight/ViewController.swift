//
//  ViewController.swift
//  trafficLight
//
//  Created by Artem on 18.08.2021.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var signalRed: UIView!
    @IBOutlet weak var signalYellow: UIView!
    @IBOutlet weak var signalGreen: UIView!
    
    @IBOutlet weak var startTrafficButton: UIButton!
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signalRed.layer.cornerRadius = 65
        signalYellow.layer.cornerRadius = 65
        signalGreen.layer.cornerRadius = 65
        
        startTrafficButton.layer.cornerRadius = 10
        
        signalRed.alpha = lightIsOff
        signalYellow.alpha = lightIsOff
        signalGreen.alpha = lightIsOff
    }
    @IBAction func startTrafficPressed() {
        if startTrafficButton.currentTitle == "START" {
            startTrafficButton.setTitle("NEXT", for: .normal)
        }
        switch count {
        case 0:
            signalRed.alpha = lightIsOn
            signalGreen.alpha = lightIsOff
            count = 1
        case 1:
            signalYellow.alpha = lightIsOn
            signalRed.alpha = lightIsOff
            count = 2
        case 2:
            signalYellow.alpha = lightIsOff
            signalGreen.alpha = lightIsOn
            count = 0
        default:
            break
        }
    }
    
    
    
}
