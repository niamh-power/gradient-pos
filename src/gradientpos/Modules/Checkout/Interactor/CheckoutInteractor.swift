import Foundation


class CheckoutInteractor {
	
	weak var presenter: CheckoutInteractorOutputProtocol?
	private let dataManager: CheckoutDataManagerProtocol
	
	required init(dataManager: CheckoutDataManagerProtocol) {
		self.dataManager = dataManager
	}
}


extension CheckoutInteractor: CheckoutInteractorInputProtocol {
	
}