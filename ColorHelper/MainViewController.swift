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
    guard let navigatingVC = segue.destination as? UINavigationController else { return }
    guard let settingsVC = navigatingVC.topViewController as? SettingsViewController else { return }
    settingsVC.delegate = self
    settingsVC.finalColorView.backgroundColor = view.backgroundColor
        
    }

}

// MARK: - Extensions

extension MainViewController: SettingsViewControllerDelegate {
  
    func setNewViewColor(for viewColor: UIColor) {
        view.backgroundColor = viewColor
    }
    
}
