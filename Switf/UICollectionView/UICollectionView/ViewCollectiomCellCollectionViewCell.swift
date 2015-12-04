//
//  ViewCollectiomCellCollectionViewCell.swift
//  UICollectionView
//
//  Created by Thanh Pham on 12/4/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

import UIKit

class ViewCollectiomCellCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func clicked(sender: AnyObject) {
        print("check")
    }
    
    func getImageView() -> UIImageView{
        return image
    }
    
    func getLabel() -> UILabel {
        return label
    }

}
