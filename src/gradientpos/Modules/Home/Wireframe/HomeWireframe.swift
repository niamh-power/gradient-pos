import Foundation
import UIKit


class HomeWireframe {

	private let mainWireframe: MainWireframe
	
	required init(mainWireframe: MainWireframe) {
		self.mainWireframe = mainWireframe
	}
	
	func createModule() -> (presenter: HomePresenterProtocol, view: HomeViewProtocol) {
		
		let storyboard = UIStoryboard(name: "Home", bundle: nil)
		let viewController = storyboard.instantiateInitialViewController() as! HomeViewProtocol

		let interactor = HomeInteractor(
			dataManager: HomeDataManager(
				appContentDataStore: JsonFileDataStore(
					path: mainWireframe.config.appContentFilePath!)))

		let presenter = HomePresenter(
			view: viewController, 
			interactor: interactor, 
			wireframe: self)
		
		viewController.eventHandler = presenter
		interactor.presenter = presenter
		
		return (presenter, viewController)
	}
}


extension HomeWireframe: HomeWireframeProtocol {
	
	func presentSelf() {
		let module = self.createModule()
		mainWireframe.router.navigateToViewController(module.view as! UIViewController)
	}
}