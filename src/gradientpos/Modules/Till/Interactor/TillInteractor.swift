import Foundation


class TillInteractor {
	
	weak var presenter: TillInteractorOutputProtocol?
	private let dataManager: TillDataManagerProtocol
	
	required init(dataManager: TillDataManagerProtocol) {
		self.dataManager = dataManager
	}
}


extension TillInteractor: TillInteractorInputProtocol {
	
}