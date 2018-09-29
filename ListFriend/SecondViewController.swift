//
//  SecondViewController.swift
//  ListFriend
//
//  Created by Jompol Suwanchan on 29/9/2561 BE.
//  Copyright © 2561 Jompol Suwanchan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var numberFactorString:String = ""
    var numberFactorInt = 1
    var numberMasterInt = 1
    var numberLoopInt = 12
    var numberInts = [1]
    
    let crossString = " X "
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberLoopInt
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "numberCell")
        
        
        while numberMasterInt < numberLoopInt {
            numberMasterInt += 1
            numberInts.append(numberMasterInt)
        }
        
        cell.textLabel?.text = String(numberInts[indexPath.row]) + crossString  + String(numberFactorInt) + " = " + String(numberInts[indexPath.row] * numberFactorInt)
        
        return cell
    }
    
    
    
    
    
    
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBAction func calculateButton(_ sender: Any) {
        
        numberFactorString = numberTextField.text!
        print("numberFactorString ==> \(numberFactorString)")
        
        numberFactorInt = Int(numberFactorString)!
        
    } //calculateButton
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    } // Main Function

} // Main Class
