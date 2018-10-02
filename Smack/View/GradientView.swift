//
//  Created by ViXette on 02/10/2018.
//

import UIKit


@IBDesignable
class GradientView: UIView {

	///
	@IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
		didSet {
			self.setNeedsLayout()
		}
	}
	
	///
	@IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
		didSet {
			self.setNeedsLayout()
		}
	}
	
	///
	override func layoutSubviews() {
		let gradientLayer = CAGradientLayer()
		
		gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
		gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
		
		gradientLayer.frame = bounds
		
		gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
		
		layer.insertSublayer(gradientLayer, at: 0)
	}
	
}
