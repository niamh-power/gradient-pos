import Foundation


class HomePresenter {
	
	private weak var view: HomeViewProtocol?
	private let interactor: HomeInteractorInputProtocol
	private let wireframe: HomeWireframeProtocol
	
	required init(view: HomeViewProtocol, 
		interactor: HomeInteractorInputProtocol, 
		wireframe: HomeWireframeProtocol) {
		
			self.view = view
			self.interactor = interactor
			self.wireframe = wireframe
	}	
}


extension HomePresenter: HomePresenterProtocol {
	
	func prepareView() {
		self.view?.setTitleText("Hello World")
	}
    func showTill() {
        self.wireframe.presentTillView()
    }
}

extension HomePresenter: HomeInteractorOutputProtocol {
	
    
}