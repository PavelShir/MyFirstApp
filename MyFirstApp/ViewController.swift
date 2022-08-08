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
        setupLables()
    
    }

    private func setupLables() {
        bluePercent.text = String(blueColorJar.value)
        redPercent.text = String(redColorJar.value)
        greenPercent.text = String(greenColorJar.value)
        
    }
    
    @IBAction func addSomeRed() {
        redPercent.text = String(Float(round(100 * redColorJar.value) / 100))
        finalColorView.backgroundColor = UIColor(red: CGFloat(redColorJar.value), green: CGFloat(greenColorJar.value), blue: CGFloat(blueColorJar.value), alpha: 1)
    }
    
    @IBAction func addSomeGreen() {
        greenPercent.text = String(Float(round(100 * greenColorJar.value) / 100))
        finalColorView.backgroundColor = UIColor(red: CGFloat(redColorJar.value), green: CGFloat(greenColorJar.value), blue: CGFloat(blueColorJar.value), alpha: 1)
    }
    
    @IBAction func addSomeBlue() {
        bluePercent.text = String(Float(round(100 * blueColorJar.value) / 100))
        finalColorView.backgroundColor = UIColor(red: CGFloat(redColorJar.value), green: CGFloat(greenColorJar.value), blue: CGFloat(blueColorJar.value), alpha: 1)
        
    }
}

