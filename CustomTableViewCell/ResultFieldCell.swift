//
//  ResultFieldCell.swift
//  CustomTableViewCell
//
//  Created by User on 07/08/20.
//  Copyright © 2020 User. All rights reserved.
//

import UIKit

class ResultFieldCell: UITableViewCell, UITextFieldDelegate {
    
    @IBOutlet var resultField: UITextField!
    
    static let identifier = "ResultField"
    static func nib() -> UINib {
        return UINib(nibName: "ResultField", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        resultField.delegate = self
        resultField.placeholder = ""
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
         print("\(resultField.text ?? "")")
        return true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
}
