//
//  ViewController.swift
//  UIKitTest
//
//  Created by CHOIJUNHYUK on 2023/10/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        myLabel.text = "Leeo 강의 듣는 중"
    }

    @IBAction func myButtonClicked(_ sender: Any) {
        print("Clicked")
    }
    
}

