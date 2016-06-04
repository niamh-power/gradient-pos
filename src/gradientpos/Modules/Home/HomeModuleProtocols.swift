import Foundation
import UIKit


protocol HomeWireframeProtocol: class {
	init(mainWireframe: MainWireframe)
	func presentSelf()
    func presentTillView()
}

protocol HomeViewProtocol: class {
	var eventHandler: HomePresenterProtocol! { get set }
	func setTitleText(title: String?)
}

protocol HomePresenterProtocol: class {
	init(view: HomeViewProtocol, 
		interactor: HomeInteractorInputProtocol, 
		wireframe: HomeWireframeProtocol)
	func prepareView()
    func showTill()
}

protocol HomeInteractorOutputProtocol: class {
	
}

protocol HomeInteractorInputProtocol: class {
	weak var presenter: HomeInteractorOutputProtocol? {get set }
	init(dataManager: HomeDataManagerProtocol)
}

protocol HomeDataManagerProtocol: class {
	init(appContentDataStore: DataStoreReaderProtocol)
}