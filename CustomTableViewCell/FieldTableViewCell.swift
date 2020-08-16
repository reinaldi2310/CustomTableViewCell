//
//  TextFieldTableViewCell.swift
//  CustomTableViewCell
//
//  Created by User on 07/08/20.
//  Copyright © 2020 User. All rights reserved.
//

import UIKit

class FieldTableViewCell: UITableViewCell, UITextFieldDelegate {
    
    @IBOutlet var field: UITextField!
    
    static let identifier = "FieldTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "FieldTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        field.delegate = self
        field.placeholder = "Type Here"
    }
    func FieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print("\(field.text ?? "")")
        return true
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
