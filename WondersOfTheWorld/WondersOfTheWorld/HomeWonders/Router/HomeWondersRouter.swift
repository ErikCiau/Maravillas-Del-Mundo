//
//  HomeWondersRouter.swift
//  WondersOfTheWorld
//
//  Created by KARILU GUTIERREZ VICENTE on 27/09/23.
//  
//

import Foundation
import UIKit
/// Clase que contiene la navegación del módulo de Inicio.
final class HomeWondersRouter {
    /// Referencia de la vista.
    var view: HomeWondersVC?
    /// Referencia del presenter.
    var presenter: HomeWondersPresenter
    /// Referencia del interactor.
    var interactor: HomeWondersInteractor?
    /// Inicializador del objeto.
    init() {
        self.view = HomeWondersVC()
        self.presenter = HomeWondersPresenter()
        self.interactor = HomeWondersInteractor()
        view?.presenter = self.presenter
        presenter.view = self.view
        presenter.interactor = self.interactor
        presenter.router = self
        interactor?.presenter = self.presenter
    }
    /// Función que lleva al módulo de detalle,.
    func showDetailWonder(wonder: WonderOfWorld) {
        let nextView = DetailWonderRouter(wonder: wonder).view
        view?.navigationController?.pushViewController(nextView, animated: true)
    }
}
extension HomeWondersRouter: HomeWondersRouterProtocol {
}

