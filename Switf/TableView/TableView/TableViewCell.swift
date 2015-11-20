//
//  TableViewCell.swift
//  TableView
//
//  Created by Thanh Pham on 11/20/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    

    @IBOutlet weak var image: UIView!
    @IBOutlet weak var gia: UILabel!
    @IBOutlet weak var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
