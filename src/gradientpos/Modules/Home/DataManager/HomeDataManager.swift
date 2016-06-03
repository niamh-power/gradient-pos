import Foundation


class HomeDataManager {

	private let appContentDataStore: DataStoreReaderProtocol
	
	required init(appContentDataStore: DataStoreReaderProtocol) {
		self.appContentDataStore = appContentDataStore
	}
}


extension HomeDataManager: HomeDataManagerProtocol {
	
}