//
//  ViewController.swift
//  MyFirstApp
//
//  Created by 19543442 on 25.07.2022.
//

import UIKit

class SettingsViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet var finalColorView: UIView!
    
    @IBOutlet var bluePercent: UILabel!
    @IBOutlet var greenPercent: UILabel!
    @IBOutlet var redPercent: UILabel!
    
    @IBOutlet var redColorJar: UISlider!
    @IBOutlet var blueColorJar: UISlider!
    @IBOutlet var greenColorJar: UISlider!
    
    @IBOutlet var redTextField: UITextField!
    @IBOutlet var greenTextField: UITextField!
    @IBOutlet var blueTextField: UITextField!

// MARK: - View LifeStyle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        finalColorView.layer.cornerRadius = 20
        setupLables()
        setupTextFields()
        redTextField.delegate = self
        greenTextField.delegate = self
        blueTextField.delegate = self
    
    }

// MARK: - IBActions
    
    
    @IBAction func colorSlidersMash(_ sender: UISlider) {
        finalColorView.backgroundColor = UIColor(
        red: CGFloat(redColorJar.value),
        green: CGFloat(greenColorJar.value),
        blue: CGFloat(blueColorJar.value),
        alpha: 1)
    
    redPercent.text = String(format: "%.2f", redColorJar.value)
    redTextField.text = String(format: "%.2f", redColorJar.value)
        
    greenPercent.text = String(format: "%.2f", greenColorJar.value)
    greenTextField.text = String(format: "%.2f", greenColorJar.value)
        
    bluePercent.text = String(format: "%.2f", blueColorJar.value)
    blueTextField.text = String(format: "%.2f", blueColorJar.value)
        
    }
    
    
// MARK: - Private func
    
    private func setupLables() {
        bluePercent.text = String(blueColorJar.value)
        redPercent.text = String(redColorJar.value)
        greenPercent.text = String(greenColorJar.value)
    }
    
    private func setupTextFields() {
        redTextField.text = redPercent.text
        greenTextField.text = greenPercent.text
        blueTextField.text = bluePercent.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
}

// MARK: - Extensions

extension SettingsViewController {
  
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}

extension SettingsViewController {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let textValue = redTextField.text else { return }
        guard let textNumber = Float(textValue) else {
            showAlert(with: "Wrong format", and: "Please, enter correct info")
            return
        }
            if 0 <= textNumber && textNumber <= 1 {
                redColorJar.value = textNumber
                greenColorJar.value = textNumber
                blueColorJar.value = textNumber
            } else {
                showAlert(with: "Wrong format", and: "Please, enter correct info")
            }
        
    }
}
