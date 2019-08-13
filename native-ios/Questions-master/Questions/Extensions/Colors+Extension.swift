import UIKit

extension UIColor {
	
	convenience init(P3ReadyRed: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 1.0) {
		if #available(iOS 10.0, *) {
			self.init(displayP3Red: P3ReadyRed, green: green, blue: blue, alpha: alpha)
		} else {
			self.init(red: P3ReadyRed, green: green, blue: blue, alpha: alpha)
		}
	}
	
	convenience init(RGBred red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 255) {
		self.init(P3ReadyRed: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha/255.0)
	}
	
	static let lightGreen = UIColor(P3ReadyRed: 0.36, green: 0.98, blue: 0.52)
	static let darkGreen = UIColor(P3ReadyRed: 0.2, green: 0.85, blue: 0.2, alpha: 1)
	static let defaultSeparatorColor = UIColor(P3ReadyRed: 0.783922, green: 0.780392, blue: 0.8)
	static let veryDarkGray = UIColor(RGBred: 40, green: 40, blue: 40)
	static let defaultTintColor = UIColor(P3ReadyRed: 0.0, green: 0.478431, blue: 1.0)
	static let darkRed = UIColor(P3ReadyRed: 0.6, green: 0.1, blue: 0.1)
	static let alternativeRed = UIColor(P3ReadyRed: 0.85, green: 0.3, blue: 0.3)
	static let lightRed = UIColor(P3ReadyRed: 0.98, green: 0.36, blue: 0.52)
	static let coolBlue = UIColor(RGBred: 80, green: 165, blue: 216)
	static let warmYellow = UIColor(RGBred: 253, green: 237, blue: 100)
	static let warmColor = UIColor(RGBred: 244, green: 196, blue: 92)
	static let highlighedGray = UIColor(RGBred: 217, green: 217, blue: 217)
	static let veryLightGray = UIColor(P3ReadyRed: 0.93, green: 0.93, blue: 0.95)
	static let veryVeryLightGray = UIColor(P3ReadyRed: 0.98, green: 0.98, blue: 0.97)
	
	static let materialBlueGray = UIColor(RGBred: 54, green: 72, blue: 81)
	static let materialLightBlueGray = UIColor(RGBred: 126, green: 147, blue: 158)
	static let materialVeryLightBlueGray = UIColor(RGBred: 161, green: 176, blue: 184)
	
	static var popoverVCBackground: UIColor {
		return UserDefaultsManager.darkThemeSwitchIsOn ? UIColor(RGBred: 237, green: 177, blue: 98) : UIColor(RGBred: 134, green: 182, blue: 208)
	}
	static var popoverVCBackgroundSelected: UIColor {
		return UserDefaultsManager.darkThemeSwitchIsOn ? UIColor(RGBred: 237-30, green: 177-30, blue: 98-30) : UIColor(RGBred: 134-30, green: 182-30, blue: 208-30)
	}
	
	static func themeStyle(dark: UIColor, light: UIColor) -> UIColor {
		return UserDefaultsManager.darkThemeSwitchIsOn ? dark : light
	}
}

extension UIBarStyle {
	static func themeStyle(dark: UIBarStyle, light: UIBarStyle) -> UIBarStyle {
		return UserDefaultsManager.darkThemeSwitchIsOn ? dark : light
	}
}

extension UIStatusBarStyle {
	static func themeStyle(dark: UIStatusBarStyle, light: UIStatusBarStyle) -> UIStatusBarStyle {
		return UserDefaultsManager.darkThemeSwitchIsOn ? dark : light
	}
}

extension UIActivityIndicatorView.Style {
	static func themeStyle(dark: UIActivityIndicatorView.Style, light: UIActivityIndicatorView.Style) -> UIActivityIndicatorView.Style {
		return UserDefaultsManager.darkThemeSwitchIsOn ? dark : light
	}
}

extension UIButton {
	func setTitleColor(dark: UIColor, light: UIColor, for state: UIControl.State) {
		self.setTitleColor(UIColor.themeStyle(dark: dark, light: light), for: state)
	}
}
