//
//  MainViewController.swift
//  ColoHelper
//
//  Created by 19543442 on 23.08.2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    
    func setNewViewColor(for viewColor: UIColor)
}

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
  
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let settingsVC = segue.destination as? SettingsViewController else { return }
    settingsVC.delegate = self
    settingsVC.newViewColor = view.backgroundColor
        
    }
    
//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        if identifier == "Settings" {
//            print("ok")
//        }
//    return true
    

}

// MARK: - Extensions

extension MainViewController: SettingsViewControllerDelegate {
  
    func setNewViewColor(for viewColor: UIColor) {
        view.backgroundColor = viewColor
    }
    
}
