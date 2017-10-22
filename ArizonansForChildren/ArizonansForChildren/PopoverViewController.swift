//
//  PopoverViewController.swift
//  ArizonansForChildren
//
//  Created by Westin Christensen on 10/21/17.
//  Copyright © 2017 HackathonTeam15. All rights reserved.
//

import UIKit

class PopoverViewController: UIViewController {

	@IBOutlet weak var viewLayer: UIView!
	@IBAction func doneSaveCheckin(_ sender: Any) {
		self.removeAnimate()
	}
	
	func showAnimate() {
		self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
		self.view.alpha = 0.0
		UIView.animate(withDuration: 0.35, animations: {
			self.view.alpha = 1.0
			self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
		})
	}
	
	func removeAnimate() {
		UIView.animate(withDuration: 0.35, animations: {
			self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
			self.view.alpha = 0.0
		}, completion:{(finished : Bool) in
			if (finished) {
				self.view.removeFromSuperview()
			}
		})
	}
	
	override func viewDidLoad() {
        super.viewDidLoad()
		viewLayer.layer.cornerRadius = 20
		self.view.backgroundColor = UIColor.black.withAlphaComponent(0.4)
		self.showAnimate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
	
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }


}
