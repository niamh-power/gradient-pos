import Foundation
import UIKit


protocol CheckoutWireframeProtocol: class {
	init(mainWireframe: MainWireframe)
	func presentSelf()
}

protocol CheckoutViewProtocol: class {
	var eventHandler: CheckoutPresenterProtocol! { get set }
	func setTitleText(title: String?)
}

protocol CheckoutPresenterProtocol: class {
	init(view: CheckoutViewProtocol, 
		interactor: CheckoutInteractorInputProtocol, 
		wireframe: CheckoutWireframeProtocol)
	func prepareView()
}

protocol CheckoutInteractorOutputProtocol: class {
	
}

protocol CheckoutInteractorInputProtocol: class {
	weak var presenter: CheckoutInteractorOutputProtocol? {get set }
	init(dataManager: CheckoutDataManagerProtocol)
}

protocol CheckoutDataManagerProtocol: class {
	init(appContentDataStore: DataStoreReaderProtocol)
}