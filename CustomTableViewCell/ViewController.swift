//
//  ViewController.swift
//  CustomTableViewCell
//
//  Created by User on 06/08/20.
//  Copyright © 2020 User. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(FieldTableViewCell.nib(), forCellReuseIdentifier: FieldTableViewCell.identifier)
        tableView.register(TheTableViewCell.nib(), forCellReuseIdentifier: TheTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    // Setup Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Setup Costume Cell
//        if indexPath.row > 8 {
//            let resultfield = FieldTableViewCell()
//            let result = tableView.dequeueReusableCell(withIdentifier: ResultFieldCell.identifier, for: indexPath) as! ResultFieldCell
//            result.textLabel?.text = resultfield.field?.text
//            return result
//        }
        
        if indexPath.row > 5 {
            let customCell = tableView.dequeueReusableCell(withIdentifier: TheTableViewCell.identifier, for: indexPath) as! TheTableViewCell
            customCell.configure(title: "Icon", imageName: "gear")
            return customCell
        }
        
        if indexPath.row > 2 {
            let textFieldCell = tableView.dequeueReusableCell(withIdentifier: FieldTableViewCell.identifier, for: indexPath) as! FieldTableViewCell
            textFieldCell.textLabel?.text = ""
            return textFieldCell
        }
        
        // Setup dequeueReusableCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Hello World"
        
        // Setup Switch (inside cellForRow)
        let theSwitch = UISwitch()
        theSwitch.addTarget(self, action: #selector(didTapSwitch), for: .valueChanged)
        cell.accessoryView = theSwitch
        
        return cell
    }
    
    // In case you want to set the row height manually
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 60
        }
    
    @objc func didTapSwitch( sender: UISwitch) {
        if sender.isOn {
            print("ON")
        }
        else {
            print("OFF")
        }
    }
    //Closure for class
}


