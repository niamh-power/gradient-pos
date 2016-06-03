import Foundation
import UIKit


class CheckoutViewController: UIViewController {
	
	var eventHandler: CheckoutPresenterProtocol!
	
	@IBOutlet weak var titleLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.eventHandler.prepareView()
	}
}


extension CheckoutViewController: CheckoutViewProtocol {

	func setTitleText(title: String?) {
		self.titleLabel.text = title
	}
}