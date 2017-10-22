//
//  GeneralTableView.swift
//  ArizonansForChildren
//
//  Created by Westin Christensen on 10/22/17.
//  Copyright © 2017 HackathonTeam15. All rights reserved.
//

import UIKit

class GeneralTableViewCell: UITableViewCell {
		
	@IBOutlet weak var checkinButton: UIButton!
	
	@IBAction func checkingIn(_ sender: UIButton) {
		checkinButton.setImage(UIImage(named: "green-checkmark"), for: .normal)
//		
//		let d = Date()
//		let calendar = Calendar.current
//		let hour = calendar.component(.hour, from: d)
//		let minutes = calendar.component(.minute, from: d)
//		//let checkOutTime: String = "\(hour):\(minutes)"
		
	}
	
	@IBOutlet weak var nameLabel: UILabel!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
	
	
}
