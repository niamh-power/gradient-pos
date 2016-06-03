import Foundation


class HomeInteractor {
	
	weak var presenter: HomeInteractorOutputProtocol?
	private let dataManager: HomeDataManagerProtocol
	
	required init(dataManager: HomeDataManagerProtocol) {
		self.dataManager = dataManager
	}
}


extension HomeInteractor: HomeInteractorInputProtocol {
	
}