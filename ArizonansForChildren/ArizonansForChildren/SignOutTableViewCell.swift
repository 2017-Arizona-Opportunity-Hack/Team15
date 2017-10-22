//
//  SignOutTableViewCell.swift
//  ArizonansForChildren
//
//  Created by Westin Christensen on 10/22/17.
//  Copyright © 2017 HackathonTeam15. All rights reserved.
//

import UIKit

class SignOutTableViewCell: UITableViewCell {

	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var signoutButton: UIButton!
	@IBAction func signoutButton(_ sender: UIButton) {
		// TODO: mark logout time
		if (signoutButton.image(for: .normal) != UIImage(named: "green-checkmark")) {
			let image = UIImage(named: "green-checkmark")
			signoutButton.setImage(image, for: .normal)
			// set signout to false
		} else {
			let image = UIImage(named: "Check-Out-Button")
			signoutButton.setImage(image, for: .normal)
			// set sign out to true
		}
	}
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
