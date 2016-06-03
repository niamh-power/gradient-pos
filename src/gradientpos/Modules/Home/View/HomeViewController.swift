import Foundation
import UIKit


class HomeViewController: UIViewController {
	
	var eventHandler: HomePresenterProtocol!
	
	@IBOutlet weak var titleLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.eventHandler.prepareView()
	}
}


extension HomeViewController: HomeViewProtocol {

	func setTitleText(title: String?) {
		self.titleLabel.text = title
	}
}