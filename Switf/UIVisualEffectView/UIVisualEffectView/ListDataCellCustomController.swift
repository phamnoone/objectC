//
//  ListDataCellCustomController.swift
//  UIVisualEffectView
//
//  Created by Thanh Pham on 12/9/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

import UIKit

class ListDataCellCustomController: UITableViewCell {

    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var avata: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var point: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func getId() -> UILabel {
        return id
    }
    
    func getAvata() -> UIImageView {
        return avata
    }
    
    func getName() -> UILabel {
        return name
    }
    
    func getPoint() -> UILabel {
        return point
    }
    
    
}
