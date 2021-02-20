//
//  SecondImageTableViewCell.swift
//  TableView-VariousPatterns
//
//  Created by shinichiro kudo on 2021/02/20.
//

import UIKit

class SecondImageTableViewCell: UITableViewCell {
    
    @IBOutlet var myImageView: UIImageView!
    
    static let identifier = "SecondImageTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "SecondImageTableViewCell", bundle: nil)
    }

    public func configure(with imageName: String) {
        myImageView.image = UIImage(named: imageName)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
