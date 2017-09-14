//
//  CutsomCell.swift
//  CustomCellsTable
//
//  Created by sandesh sardar on 14/09/17.
//  Copyright © 2017 sandesh sardar. All rights reserved.
//

import UIKit

class CutsomCell: UITableViewCell {

     var onButtonTapped : (() -> Void)? = nil
    
    @IBOutlet weak var bttnCell: UIButton!
    @IBOutlet weak var lblCell: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func btnCell(_ sender: Any) {
        
        print("sandesh")
        
        print((sender as AnyObject).tag)
      
        if let onButtonTapped = self.onButtonTapped {
            onButtonTapped()
        }
        
    }
    
  
}
