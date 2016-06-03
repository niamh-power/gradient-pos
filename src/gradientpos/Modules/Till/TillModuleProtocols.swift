import Foundation
import UIKit


protocol TillWireframeProtocol: class {
	init(mainWireframe: MainWireframe)
	func presentSelf()
}

protocol TillViewProtocol: class {
	var eventHandler: TillPresenterProtocol! { get set }
	func setTitleText(title: String?)
}

protocol TillPresenterProtocol: class {
	init(view: TillViewProtocol, 
		interactor: TillInteractorInputProtocol, 
		wireframe: TillWireframeProtocol)
	func prepareView()
}

protocol TillInteractorOutputProtocol: class {
	
}

protocol TillInteractorInputProtocol: class {
	weak var presenter: TillInteractorOutputProtocol? {get set }
	init(dataManager: TillDataManagerProtocol)
}

protocol TillDataManagerProtocol: class {
	init(appContentDataStore: DataStoreReaderProtocol)
}