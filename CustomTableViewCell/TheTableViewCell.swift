//
//  TheTableViewCell.swift
//  CustomTableViewCell
//
//  Created by User on 06/08/20.
//  Copyright © 2020 User. All rights reserved.
//

import UIKit

class TheTableViewCell: UITableViewCell {
    
    static let identifier = "TheTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "TheTableViewCell", bundle: nil)
    }
    
    public func configure(title: String, imageName: String) {
        theLabel.text = title
        theImageView.image = UIImage(systemName: imageName)
    }
    
    @IBOutlet var theImageView: UIImageView!
    @IBOutlet var theLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Setup the size of custom cell. If you want to set the cell manually, see ViewController.swift line 47
//        theImageView.contentMode = .scaleAspectFit
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
}
