//
//  Smack
//
//  Created by ViXette on 12/09/2018.
//  Copyright © 2018 ViXette. All rights reserved.
//

import UIKit


class ChannelViewController: UIViewController {
	
	///
	override func viewDidLoad() {
		super.viewDidLoad()
		
		revealViewController()?.rearViewRevealWidth = view.frame.width - 60
	}
	
}
