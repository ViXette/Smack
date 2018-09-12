//
//  Smack
//
//  Created by ViXette on 12/09/2018.
//  Copyright © 2018 ViXette. All rights reserved.
//

import UIKit


class ChatViewController: UIViewController {

	@IBOutlet weak var menu_button: UIButton!
	
	///
	override func viewDidLoad() {
		super.viewDidLoad()
		
		menu_button.addTarget(revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
		
		view.addGestureRecognizer(revealViewController().panGestureRecognizer())
		view.addGestureRecognizer(revealViewController().tapGestureRecognizer())
	}
	
}
