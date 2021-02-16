//
//  MyFirstTableViewCell.swift
//  TableView-VariousPatterns
//
//  Created by shinichiro kudo on 2021/02/16.
//

import UIKit

class MyFirstTableViewCell: UITableViewCell {

    static let identifier = "MyFirstTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyFirstTableViewCell", bundle: nil)
    }
    
    
    @IBOutlet var button: UIButton!
    
    @IBAction func didTupButton() {
        
    }
    
    func configure(with title: String) {
        button.setTitle(title, for: .normal)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        button.setTitleColor(.link, for: .normal)
    }

    
}
