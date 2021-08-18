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
    
    @IBOutlet weak var showSignal: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        signalRed.layer.cornerRadius = 73
        signalYellow.layer.cornerRadius = 73
        signalGreen.layer.cornerRadius = 73
        showSignal.layer.cornerRadius = 10
        
    }

    @IBAction func startTrafficsignal() {
    }
    
}

