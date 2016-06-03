import Foundation
import UIKit


class TillWireframe {

	private let mainWireframe: MainWireframe
	
	required init(mainWireframe: MainWireframe) {
		self.mainWireframe = mainWireframe
	}
	
	func createModule() -> (presenter: TillPresenterProtocol, view: TillViewProtocol) {
		
		let storyboard = UIStoryboard(name: "Till", bundle: nil)
		let viewController = storyboard.instantiateInitialViewController() as! TillViewProtocol

		let interactor = TillInteractor(
			dataManager: TillDataManager(
				appContentDataStore: JsonFileDataStore(
					path: mainWireframe.config.appContentFilePath!)))

		let presenter = TillPresenter(
			view: viewController, 
			interactor: interactor, 
			wireframe: self)
		
		viewController.eventHandler = presenter
		interactor.presenter = presenter
		
		return (presenter, viewController)
	}
}


extension TillWireframe: TillWireframeProtocol {
	
	func presentSelf() {
		let module = self.createModule()
		mainWireframe.router.navigateToViewController(module.view as! UIViewController)
	}
}