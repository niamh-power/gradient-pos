import Foundation


class CheckoutDataManager {

	private let appContentDataStore: DataStoreReaderProtocol
	
	required init(appContentDataStore: DataStoreReaderProtocol) {
		self.appContentDataStore = appContentDataStore
	}
}


extension CheckoutDataManager: CheckoutDataManagerProtocol {
	
}