//
//  ViewController.swift
//  ListFriend
//
//  Created by Jompol Suwanchan on 29/9/2561 BE.
//  Copyright © 2561 Jompol Suwanchan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let friendStrings = ["Doramon","Doramy","Nopita","Suneko","Chisuka","Milin"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendStrings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = friendStrings[indexPath.row]
        
        return cell;
        
    }
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

