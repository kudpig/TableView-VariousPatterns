//
//  MyFirstTableViewCell.swift
//  TableView-VariousPatterns
//
//  Created by shinichiro kudo on 2021/02/16.
//

import UIKit

protocol MyFirstTableViewCellDelegate: AnyObject {
    func didTapButton(with title: String)
}

class MyFirstTableViewCell: UITableViewCell {
    
    weak var delegate: MyFirstTableViewCellDelegate?

    static let identifier = "MyFirstTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyFirstTableViewCell", bundle: nil)
    }
    
    
    @IBOutlet var button: UIButton!
    private var title: String = ""
    
    @IBAction func didTupButton() {
        delegate?.didTapButton(with: title)
    }
    
    func configure(with title: String) {
        self.title = title
        button.setTitle(title, for: .normal)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        button.setTitleColor(.link, for: .normal)
    }

    
}
