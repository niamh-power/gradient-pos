import Foundation


class TillDataManager {

	private let appContentDataStore: DataStoreReaderProtocol
	
	required init(appContentDataStore: DataStoreReaderProtocol) {
		self.appContentDataStore = appContentDataStore
	}
}


extension TillDataManager: TillDataManagerProtocol {
	
}