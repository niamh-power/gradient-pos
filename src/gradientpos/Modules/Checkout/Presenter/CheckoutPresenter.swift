import Foundation


class CheckoutPresenter {
	
	private weak var view: CheckoutViewProtocol?
	private let interactor: CheckoutInteractorInputProtocol
	private let wireframe: CheckoutWireframeProtocol
	
	required init(view: CheckoutViewProtocol, 
		interactor: CheckoutInteractorInputProtocol, 
		wireframe: CheckoutWireframeProtocol) {
		
			self.view = view
			self.interactor = interactor
			self.wireframe = wireframe
	}	
}


extension CheckoutPresenter: CheckoutPresenterProtocol {
	
	func prepareView() {
		self.view?.setTitleText("Hello World")
	}
}

extension CheckoutPresenter: CheckoutInteractorOutputProtocol {
	

}