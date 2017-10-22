//
//  RelativeTableViewCell.swift
//  ArizonansForChildren
//
//  Created by Westin Christensen on 10/22/17.
//  Copyright © 2017 HackathonTeam15. All rights reserved.
//

import UIKit

class RelativeTableViewCell: UITableViewCell {

	@IBOutlet weak var nameLabel: UITextField!
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
