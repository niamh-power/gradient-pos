import Foundation


class TillPresenter {
	
	private weak var view: TillViewProtocol?
	private let interactor: TillInteractorInputProtocol
	private let wireframe: TillWireframeProtocol
	
	required init(view: TillViewProtocol, 
		interactor: TillInteractorInputProtocol, 
		wireframe: TillWireframeProtocol) {
		
			self.view = view
			self.interactor = interactor
			self.wireframe = wireframe
	}	
}


extension TillPresenter: TillPresenterProtocol {
	
	func prepareView() {
		self.view?.setTitleText("Hello World")
	}
}

extension TillPresenter: TillInteractorOutputProtocol {
	

}