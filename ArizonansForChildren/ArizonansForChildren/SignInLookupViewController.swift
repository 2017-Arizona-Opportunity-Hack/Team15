//
//  SignInLookupViewController.swift
//  ArizonansForChildren
//
//  Created by Westin Christensen on 10/21/17.
//  Copyright © 2017 HackathonTeam15. All rights reserved.
//

import UIKit

class SignInLookupViewController: UIViewController {

	var names: [String] = []
	
	@IBOutlet var nameSearched: UITextField!
	@IBOutlet var test: UILabel!

	@IBAction func searchNameChanged(_ sender: UITextField) {
		test.text =  nameSearched.text
	}
	
	override func viewDidLoad() {
        super.viewDidLoad()
		names.append("Tori")
		names.append("Westin")
		names.append("Diego")
		names.append("Andreas")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
