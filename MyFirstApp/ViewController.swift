//
//  ViewController.swift
//  MyFirstApp
//
//  Created by 19543442 on 25.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var finalColorView: UIView!
    
    @IBOutlet var bluePercent: UILabel!
    @IBOutlet var greenPercent: UILabel!
    @IBOutlet var redPercent: UILabel!
    
    @IBOutlet var redColorJar: UISlider!
    @IBOutlet var blueColorJar: UISlider!
    @IBOutlet var greenColorJar: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        finalColorView.layer.cornerRadius = 20
        
    }

    private func setupLables() {
        //bluePercent.text = Double(round(100 * blueColorJar.value) / 100)
        
    }
    
    @IBAction func addSomeRed() {
        redPercent.text = String(Double(round(100 * redColorJar.value) / 100))
    }
    
    @IBAction func addSomeGreen() {
        greenPercent.text = String(greenColorJar.value)
    }
    
    @IBAction func addSomeBlue() {
        bluePercent.text = String(blueColorJar.value)
    }
}

