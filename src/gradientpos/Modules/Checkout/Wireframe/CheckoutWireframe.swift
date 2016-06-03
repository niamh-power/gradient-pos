import Foundation
import UIKit


class CheckoutWireframe {

	private let mainWireframe: MainWireframe
	
	required init(mainWireframe: MainWireframe) {
		self.mainWireframe = mainWireframe
	}
	
	func createModule() -> (presenter: CheckoutPresenterProtocol, view: CheckoutViewProtocol) {
		
		let storyboard = UIStoryboard(name: "Checkout", bundle: nil)
		let viewController = storyboard.instantiateInitialViewController() as! CheckoutViewProtocol

		let interactor = CheckoutInteractor(
			dataManager: CheckoutDataManager(
				appContentDataStore: JsonFileDataStore(
					path: mainWireframe.config.appContentFilePath!)))

		let presenter = CheckoutPresenter(
			view: viewController, 
			interactor: interactor, 
			wireframe: self)
		
		viewController.eventHandler = presenter
		interactor.presenter = presenter
		
		return (presenter, viewController)
	}
}


extension CheckoutWireframe: CheckoutWireframeProtocol {
	
	func presentSelf() {
		let module = self.createModule()
		mainWireframe.router.navigateToViewController(module.view as! UIViewController)
	}
}