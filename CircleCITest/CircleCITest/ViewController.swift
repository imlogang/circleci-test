//
//  ViewController.swift
//  CircleCITest
//
//  Created by Steven Zweier on 2/15/24.
//

import UIKit

class ViewController: UIViewController {

  let textField = UITextField()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    textField.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(textField)
    textField.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    textField.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    textField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
    textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
    textField.backgroundColor = .red
    
    let dismissButton = UIButton()
    dismissButton.translatesAutoresizingMaskIntoConstraints = false
    dismissButton.isAccessibilityElement = true
    dismissButton.backgroundColor = .blue
    view.addSubview(dismissButton)
    dismissButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
    dismissButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    dismissButton.topAnchor.constraint(equalTo: textField.bottomAnchor).isActive = true
    dismissButton.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    dismissButton.addTarget(self, action: #selector(closeKeyboard), for: .touchUpInside)
    dismissButton.accessibilityIdentifier = "done"
  }
  
  @objc func closeKeyboard() {
    textField.endEditing(true)
  }
}

