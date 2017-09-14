//
//  ViewController.swift
//  CustomCellsTable
//
//  Created by sandesh sardar on 14/09/17.
//  Copyright © 2017 sandesh sardar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,  UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell:CutsomCell!
        cell = self.tableView.dequeueReusableCell(withIdentifier: "customCell")! as! CutsomCell
        
        cell.bttnCell.backgroundColor = UIColor.red
        cell.bttnCell.setTitle("\(indexPath.row)", for: .normal)
        cell.lblCell.text = "\(indexPath.row)"
        
        cell.onButtonTapped = {
            //Do whatever you want to do when the button is tapped here
            print("\(indexPath.row)")
        }
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = self.tableView.cellForRow(at: indexPath) as! CutsomCell
        cell.bttnCell.backgroundColor = UIColor.green
    }

}

