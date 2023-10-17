//
//  MyViewController.swift
//  UIKitTest
//
//  Created by CHOIJUNHYUK on 2023/10/15.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .blue
    }
    
    @IBAction func didTabButton(_ sender: Any) {
        if let name = nameTextField.text {
            helloLabel.text = "Hello \(name)"
        }
    }
}
