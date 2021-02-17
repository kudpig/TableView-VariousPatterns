//
//  ViewController.swift
//  TableView-VariousPatterns
//
//  Created by shinichiro kudo on 2021/02/16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    // Action Funcs
    @IBAction func tapGoFirst(_ sender: UIButton) {
        performSegue(withIdentifier: "goFirst", sender: nil)
    }
    
    @IBAction func tapGoSecond(_ sender: UIButton) {
        performSegue(withIdentifier: "goSecond", sender: nil)
    }
    
}

