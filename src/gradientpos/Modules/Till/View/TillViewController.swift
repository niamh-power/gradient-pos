import Foundation
import UIKit


class TillViewController: UIViewController {
	
	var eventHandler: TillPresenterProtocol!
	
	@IBOutlet weak var titleLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.eventHandler.prepareView()
	}
}


extension TillViewController: TillViewProtocol {

	func setTitleText(title: String?) {
		self.titleLabel.text = title
	}
}