//
//  PlayViewCell.swift
//  Ratings
//
//  Created by Thanh Pham on 11/12/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

import UIKit

class PlayViewCell: UITableViewCell {

    @IBOutlet weak var gameLabel : UILabel!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var voteImgae :UIImageView!
    
    var player: Player! {
        didSet {
            gameLabel.text = player.game
            nameLabel.text = player.name
            voteImgae.image = imageForRating(player.rating)
        }
    }

    func imageForRating(rating:Int) -> UIImage? {
        let imageName = "\(rating)Stars"
        return UIImage(named: imageName)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
