//
//  TrackCell.swift
//  MusicPlayer
//
//  Created by Timothy T Hagood on 3/23/15.
//  Copyright (c) 2015 Timothy T Hagood. All rights reserved.
//

import UIKit

class TrackCell: UITableViewCell {

    @IBOutlet weak var playIcon: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
