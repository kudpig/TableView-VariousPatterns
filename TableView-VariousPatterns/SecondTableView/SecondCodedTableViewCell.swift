//
//  SecondCodedTableViewCell.swift
//  TableView-VariousPatterns
//
//  Created by shinichiro kudo on 2021/02/20.
//

import UIKit

class SecondCodedTableViewCell: UITableViewCell {
    
    static let identifire = "SecondCodedTableViewCell"

    let myLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    let myImageView: UIImageView = {
        let imageView = UIImageView()
        
        return imageView
    }()
    
    
    public func configure() {
        contentView.addSubview(myLabel)
        contentView.addSubview(myImageView)
        
        myLabel.text = "It works"
        myLabel.textAlignment = .center
        myImageView.image = UIImage(named: "Image2")
        myImageView.contentMode = .scaleAspectFill
    }
    
    override func layoutSubviews() {
        super .layoutSubviews()
        
        myImageView.frame = CGRect(x: 5, y: 5, width: 50, height: 50)
        myLabel.frame = CGRect(x: 55, y: 5, width: contentView.frame.size.width - 55, height: 50)
        
        myImageView.layer.masksToBounds = true
        myImageView.layer.cornerRadius = 50
    }
    
}
